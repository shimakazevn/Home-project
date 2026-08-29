#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Kiểm tra bộ glyph chữ Việt của font - không cần thư viện ngoài.

Giải mã bảng cmap của TTF / OTF / TTC (đọc bằng pure Python) rồi đối chiếu
với bảng chữ cái tiếng Việt để trả về độ phủ (coverage ratio) + danh sách
glyph thiếu. Dùng để chọn font "đẹp + hỗ trợ Việt" cho game.
"""
import struct
from pathlib import Path


# ---------- Bảng chữ cái tiếng Việt ----------
_VIET_BASE = [
    'a', 'b', 'c', 'd', 'e', 'g', 'h', 'i', 'k', 'l',
    'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'x', 'y', 'đ',
    'á', 'à', 'ả', 'ã', 'ạ',
    'ă', 'ắ', 'ằ', 'ẳ', 'ẵ', 'ặ',
    'â', 'ấ', 'ầ', 'ẩ', 'ẫ', 'ậ',
    'é', 'è', 'ẻ', 'ẽ', 'ẹ',
    'ê', 'ế', 'ề', 'ể', 'ễ', 'ệ',
    'í', 'ì', 'ỉ', 'ĩ', 'ị',
    'ó', 'ò', 'ỏ', 'õ', 'ọ',
    'ô', 'ố', 'ồ', 'ổ', 'ỗ', 'ộ',
    'ơ', 'ớ', 'ờ', 'ở', 'ỡ', 'ợ',
    'ú', 'ù', 'ủ', 'ũ', 'ụ',
    'ư', 'ứ', 'ừ', 'ử', 'ữ', 'ự',
    'ý', 'ỳ', 'ỷ', 'ỹ', 'ỵ',
]
VIET_LOWER = set(_VIET_BASE)
VIET_FULL = set(_VIET_BASE) | {c.upper() for c in _VIET_BASE}
# Nhóm glyph "bắt buộc" (nếu thiếu -> font không dùng được cho chữ Việt)
_VIET_CRITICAL = set('aăâeêioôơuuưydđ')
VIET_CRITICAL = _VIET_CRITICAL | {c.upper() for c in _VIET_CRITICAL} | \
    {'á', 'Á', 'ơ', 'Ơ', 'ư', 'Ư', 'ơ', 'ạ', 'ạ', 'ệ', 'Ệ', 'ợ', 'Ợ', 'ự', 'Ự'}


# ---------- Đọc sfnt ----------
def _u16(b, o):
    return struct.unpack_from('>H', b, o)[0]


def _i16(b, o):
    return struct.unpack_from('>h', b, o)[0]


def _u32(b, o):
    return struct.unpack_from('>I', b, o)[0]


def _read_sfnt(path):
    data = Path(path).read_bytes()
    tag = data[:4]
    offset = 0
    if tag == b'ttcf':  # TrueType Collection -> font đầu tiên
        offset = _u32(data, 8)
        tag = data[offset:offset + 4]
    if tag not in (b'\x00\x01\x00\x00', b'true', b'OTTO', b'typ1'):
        return None
    num_tables = _u16(data, offset + 4)
    tables = {}
    p = offset + 12
    for _ in range(num_tables):
        name = data[p:p + 4].decode('latin1')
        off = _u32(data, p + 8)
        length = _u32(data, p + 12)
        tables[name] = (off, length)
        p += 16
    return data, tables


# ---------- Format 4 ----------
def _parse_format4(data, o):
    seg_count = _u16(data, o + 6) // 2
    end_off = o + 14
    start_off = end_off + 2 * seg_count + 2
    delta_off = start_off + 2 * seg_count
    roff_off = delta_off + 2 * seg_count
    groups = []
    for i in range(seg_count):
        start = _u16(data, start_off + 2 * i)
        if start == 0xFFFF:
            continue
        end = _u16(data, end_off + 2 * i)
        delta = _i16(data, delta_off + 2 * i)
        ro = _u16(data, roff_off + 2 * i)
        groups.append((start, end, delta, ro, roff_off))
    return groups


def _format4_has(groups, cp, data):
    for i, (start, end, delta, ro, roff_off) in enumerate(groups):
        if start <= cp <= end:
            if ro == 0:
                gid = (cp + delta) & 0xFFFF
            else:
                idx = roff_off + 2 * i + ro + 2 * (cp - start)
                if idx + 2 > len(data):
                    return False
                gid = _u16(data, idx)
                if gid != 0:
                    gid = (gid + delta) & 0xFFFF
            return gid != 0
    return False


# ---------- Format 12 ----------
def _parse_format12(data, o):
    num_groups = _u32(data, o + 12)
    groups = []
    for i in range(num_groups):
        p = o + 16 + i * 12
        start = _u32(data, p)
        end = _u32(data, p + 4)
        sg = _u32(data, p + 8)
        groups.append((start, end, sg))
    groups.sort()
    return groups


def _format12_has(groups, cp):
    # binary search over start
    lo, hi = 0, len(groups) - 1
    while lo <= hi:
        mid = (lo + hi) // 2
        s, e, sg = groups[mid]
        if cp < s:
            hi = mid - 1
        elif cp > e:
            lo = mid + 1
        else:
            return sg != 0
    return False


class CmapIndex:
    def __init__(self, fmt4, fmt12, data):
        self.fmt4 = fmt4
        self.fmt12 = fmt12
        self.data = data

    def has(self, cp):
        if self.fmt12 and _format12_has(self.fmt12, cp):
            return True
        if self.fmt4 and _format4_has(self.fmt4, cp, self.data):
            return True
        return False


def load_cmap(path):
    """Trả về CmapIndex hoặc None nếu đọc không được."""
    try:
        parsed = _read_sfnt(path)
    except Exception:
        return None
    if parsed is None:
        return None
    data, tables = parsed
    if 'cmap' not in tables:
        return None
    off, _ = tables['cmap']
    num = _u16(data, off + 2)
    fmt4 = None
    fmt12 = None
    for i in range(num):
        p = off + 4 + i * 8
        plat = _u16(data, p)
        enc = _u16(data, p + 2)
        sub = off + _u32(data, p + 4)
        try:
            fmt = _u16(data, sub)
        except Exception:
            continue
        # Ưu tiên bảng Windows(3)/Unicode(0)
        if fmt == 4 and fmt4 is None and plat in (0, 3):
            fmt4 = _parse_format4(data, sub)
        elif fmt == 12 and fmt12 is None and plat in (0, 3):
            fmt12 = _parse_format12(data, sub)
    if fmt4 is None and fmt12 is None:
        return None
    return CmapIndex(fmt4, fmt12, data)


def viet_coverage(path, check_set=None):
    """Trả về (ratio, covered_count, total, missing_list) cho set glyph Việt."""
    check_set = check_set or VIET_FULL
    idx = load_cmap(path)
    if idx is None:
        return None, 0, len(check_set), sorted(check_set)
    missing = []
    covered = 0
    for ch in sorted(check_set):
        if idx.has(ord(ch)):
            covered += 1
        else:
            missing.append(ch)
    ratio = covered / len(check_set) if check_set else 0.0
    return ratio, covered, len(check_set), missing


def critical_coverage(path):
    idx = load_cmap(path)
    if idx is None:
        return 0.0, []
    missing = []
    for ch in sorted(VIET_CRITICAL):
        if not idx.has(ord(ch)):
            missing.append(ch)
    return (len(VIET_CRITICAL) - len(missing)) / len(VIET_CRITICAL), missing
