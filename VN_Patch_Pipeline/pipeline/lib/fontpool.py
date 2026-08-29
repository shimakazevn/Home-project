#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Phát hiện & chọn font chữ Việt đẹp nhất trên máy.

- Quét thư mục font hệ thống + thư mục font của project.
- Kiểm tra phủ glyph Việt (bắt buộc) bằng lib.fontcheck.
- Chấm điểm: ưu tiên Noto Sans, rồi Inter/Roboto/Segoe...; ưu weight Medium/Regular.
- (Tuỳ chọn) chuyển sang WOFF2 bằng fontTools để tối ưu dung lượng.
"""
import os
import re
from dataclasses import dataclass, field
from pathlib import Path

from . import fontcheck


MAX_FONT_BYTES = 25 * 1024 * 1024  # bỏ qua font CJK khổng lồ
# Chỉ loại font biểu tượng / CJK không có chữ Việt (đúng theo tên file).
SKIP_NAME_RE = re.compile(
    r'(Icons?$|Marlett|Malgun|Bahnschrift|Lucida|Consolas|Cambria|Candara|'
    r'Segoe UI Emoji|SegoeUIEmoji|NotoSans(?:KR|JP|TC|SC)|NotoSerif|MS UI)',
    re.I)


def read_family_name(path):
    """Đọc tên family (nameID 1) của một file font, trả về str (hoặc '')."""
    try:
        parsed = fontcheck._read_sfnt(path)
        if parsed is None:
            return ""
        data, tables = parsed
        if 'name' not in tables:
            return ""
        off, _ = tables['name']
        fmt = fontcheck._u16(data, off)
        if fmt not in (0, 1):
            return ""
        count = fontcheck._u16(data, off + 2)
        str_off = off + fontcheck._u16(data, off + 4)
        best = ""
        for i in range(count):
            p = off + 6 + i * 12
            pid, eid, lid, nid = (fontcheck._u16(data, p + j) for j in (0, 2, 4, 6))
            ln, o = fontcheck._u16(data, p + 8), fontcheck._u16(data, p + 10)
            if nid not in (1, 16):
                continue
            try:
                if pid == 3 and eid == 1:  # Windows Unicode
                    raw = data[str_off + o:str_off + o + ln]
                    s = raw.decode('utf-16-be', errors='ignore')
                else:
                    raw = data[str_off + o:str_off + o + ln]
                    s = raw.decode('latin1', errors='ignore')
            except Exception:
                continue
            if s and (len(s) > len(best) or (nid == 16 and not best)):
                best = s
        return best.strip()
    except Exception:
        return ""


@dataclass
class FontChoice:
    filename: str            # tên family (vd "Inter")
    family: str              # tên dùng đăng ký trong game
    source_path: str         # đường dẫn file gốc đã chọn
    source_kind: str         # system | project | bundled
    coverage: float
    critical: float
    missing: list = field(default_factory=list)
    size_bytes: int = 0
    score: int = 0


def _candidate_files(paths_cfg):
    seen = set()
    files = []
    for d in (paths_cfg.get("system_font_dirs", []) or []):
        dp = Path(os.path.expandvars(d))
        if not dp.exists():
            continue
        for pat in ("*.ttf", "*.otf", "*.ttc"):
            for f in dp.glob(pat):
                try:
                    if f.stat().st_size > MAX_FONT_BYTES:
                        continue
                    if SKIP_NAME_RE.search(f.name):
                        continue
                    if f not in seen:
                        seen.add(f)
                        files.append((f, "system"))
                except Exception:
                    pass
    for d in (paths_cfg.get("project_font_dirs", []) or []):
        dp = Path(os.path.expandvars(d))
        if not dp.exists():
            continue
        for pat in ("*.ttf", "*.otf", "*.ttc"):
            for f in dp.glob(pat):
                if f not in seen:
                    seen.add(f)
                    files.append((f, "project"))
    return files


def _weight_bonus(family):
    fl = family.lower()
    for key, bonus in (('light', -15), ('extra', -5), ('thin', -20),
                       ('black', 0), ('heavy', 0), ('bold', 5),
                       ('semibold', 15), ('medium', 40), ('regular', 30)):
        if key in fl:
            return bonus
    return 25


def score_candidates(candidates, preferred_names):
    scored = []
    for f, kind in candidates:
        try:
            crit, missing_crit = fontcheck.critical_coverage(f)
        except Exception:
            continue
        if crit < 1.0:
            continue  # không phủ đủ glyph bắt buộc -> loại
        try:
            ratio, cov, tot, missing = fontcheck.viet_coverage(f)
        except Exception:
            ratio, missing = 0.0, []
        family = read_family_name(f) or f.stem
        score = 0
        for rank, pref in enumerate(preferred_names):
            if pref.lower() in family.lower():
                score += 1000 - rank * 10
                break
        if 'noto' in family.lower():
            score += 500
        if 'viet' in family.lower():
            score += 300
        score += _weight_bonus(family)
        score += int(round(ratio * 100))
        scored.append({
            "path": f, "kind": kind, "family": family,
            "coverage": ratio, "critical": crit,
            "missing": missing, "size": f.stat().st_size, "score": score,
        })
    scored.sort(key=lambda x: (-x["score"], -x["coverage"], x["size"]))
    return scored


def pick_font(paths, cfg, report=print):
    """Chọn font Việt tốt nhất. Trả về FontChoice hoặc None."""
    fonts_cfg = cfg
    preferred = fonts_cfg.get("preferred_names", [])
    candidates = _candidate_files(fonts_cfg)
    report(f"  Quét {len(candidates)} font ứng viên (hệ thống + project).")
    scored = score_candidates(candidates, preferred)
    if not scored:
        report("  [!] Không tìm thấy font nào phủ đủ glyph tiếng Việt trên máy.")
        return None
    for i, s in enumerate(scored[:8]):
        tag = "CHỌN" if i == 0 else f"    "
        report(f"  {tag} #{i + 1} {s['family']:<28} {s['kind']:<8} "
               f"coverage={s['coverage']:.3f} score={s['score']} "
               f"{s['size']//1024}KB  {s['path']}")
    best = scored[0]
    target_family = cfg.get("target_family", "NotoSansVN")
    return FontChoice(
        filename=best["family"],
        family=target_family,
        source_path=str(best["path"]),
        source_kind=best["kind"],
        coverage=best["coverage"],
        critical=best["critical"],
        missing=best["missing"],
        size_bytes=best["size"],
        score=best["score"],
    )


def to_woff2(src, dst):
    """Chuyển font sang woff2 (cần fontTools + brotli). True nếu thành công."""
    try:
        from fontTools.ttLib import TTFont
        t = TTFont(str(src), fontNumber=0)
        Path(dst).parent.mkdir(parents=True, exist_ok=True)
        t.save(str(dst), flavor="woff2")
        return True
    except Exception as e:
        return False


def deploy_font(choice, out_fonts_dir, bundle_ext="woff2", keep_ttf=True, report=print):
    """Sẵn sàng file font + copy vào out_fonts_dir. Trả về {ext, fileName}."""
    out_fonts_dir = Path(out_fonts_dir)
    out_fonts_dir.mkdir(parents=True, exist_ok=True)
    base = (choice.family or "Font")
    src = Path(choice.source_path)

    used = {}
    if bundle_ext in ("woff2", "woff"):
        cand = out_fonts_dir / f"{base}.{bundle_ext}"
        if to_woff2(src, cand):
            used[bundle_ext] = cand.name
            report(f"  [OK]  Đã chuyển sang {bundle_ext}: {cand.name}")
    # fallback / thêm ttf
    ttf_name = None
    if keep_ttf or bundle_ext not in ("woff2", "woff"):
        ext = src.suffix.lower().lstrip(".") or "ttf"
        if ext in ("ttc",):
            ext = "ttf"
        ttf_name = f"{base}.{ext}"
        dst = out_fonts_dir / ttf_name
        dst.write_bytes(src.read_bytes())
        used["ttf"] = ttf_name
        report(f"  [OK]  Đã sao chép {ext}: {ttf_name}")
    if not used:
        raise RuntimeError("Không tạo được file font nào.")
    # Ưu tiên woff2 nếu có
    prefer = bundle_ext if bundle_ext in used else ("ttf" if "ttf" in used else next(iter(used)))
    return prefer, used[prefer], used
