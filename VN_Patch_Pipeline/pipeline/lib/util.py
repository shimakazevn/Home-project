#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Tiện ích đọc/ghi file an toàn cho pipeline (JSON, CSV, hash, copy, state)."""
import json
import csv
import os
import shutil
import hashlib
from pathlib import Path


# ---------- JSON ----------
def load_json(path):
    with open(path, encoding="utf-8") as f:
        return json.load(f)


def save_json(data, path, indent=4):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=indent)


# ---------- CSV ----------
def read_csv_rows(path):
    """Trả về list[dict] từ file CSV có header (utf-8-sig)."""
    path = Path(path)
    with open(path, encoding="utf-8-sig", newline="") as f:
        return [dict(r) for r in csv.DictReader(f)]


def write_csv(path, fieldnames, rows):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w", encoding="utf-8-sig", newline="") as f:
        w = csv.DictWriter(f, fieldnames=fieldnames)
        w.writeheader()
        w.writerows(rows)


def load_lut(csv_path):
    """Đọc CSV 2 cột (original_jp, vietnamese) -> {jp.strip(): vn} (giữ ws của vn)."""
    path = Path(csv_path)
    lut = {}
    if not path.exists():
        return lut
    with open(path, encoding="utf-8-sig", newline="") as f:
        r = csv.reader(f)
        next(r, None)  # bỏ header
        for row in r:
            if len(row) >= 2 and row[1].strip():
                lut[row[0].strip()] = row[1]
    return lut


# ---------- Hash ----------
def sha256_file(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


# ---------- Copy ----------
def copy_tree(src, dst):
    """Copy nội dung src vào dst (dirs_exist_ok). Trả về số file copy."""
    src, dst = Path(src), Path(dst)
    if not src.exists():
        return 0
    count = 0
    dst.mkdir(parents=True, exist_ok=True)
    for f in src.rglob("*"):
        if f.is_file():
            rel = f.relative_to(src)
            target = dst / rel
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(f, target)
            count += 1
    return count


def force_copy(src, dst):
    src, dst = Path(src), Path(dst)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


def remove_tree(path):
    path = Path(path)
    if path.exists():
        shutil.rmtree(path)


# ---------- State ----------
def load_state(paths):
    if paths.state.exists():
        return load_json(paths.state)
    return {}


def save_state(paths, state):
    save_json(state, paths.state)


def set_state(paths, key, value):
    state = load_state(paths)
    state[key] = value
    save_state(paths, state)
    return state


def get_state(paths, key, default=None):
    return load_state(paths).get(key, default)


def clear_state(paths):
    if paths.state.exists():
        paths.state.unlink()


# ---------- Platform ----------
def is_windows():
    return os.name == "nt"


def expand_dir(value):
    return Path(os.path.expandvars(value))
