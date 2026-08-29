#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Giải quyết mọi đường dẫn từ config.json một chỗ duy nhất.

Mọi stage chỉ dùng `Paths` - không tự hardcode đường dẫn riêng.
Đường dẫn trong config có thể là tuyệt đối, hoặc tương đối so với
`source_project` (nếu bắt đầu bằng source) hoặc tương đối so với pipeline.
"""
import json
import os
from pathlib import Path

PIPELINE_DIR = Path(__file__).resolve().parent.parent  # .../VN_Patch_Pipeline/pipeline
WORK_DIR = PIPELINE_DIR.parent                         # .../VN_Patch_Pipeline
CONFIG_PATH = PIPELINE_DIR / "config.json"


def _resolve(base, value):
    """Resolve một giá trị path: tuyệt đối giữ nguyên; tương đối nối vào base."""
    p = Path(os.path.expandvars(value))
    if p.is_absolute():
        return p
    return (base / p).resolve()


class Paths:
    def __init__(self, config_path=CONFIG_PATH):
        self.config_path = Path(config_path)
        if not self.config_path.exists():
            raise FileNotFoundError(f"Không tìm thấy config: {self.config_path}")
        with open(self.config_path, encoding="utf-8") as f:
            self.cfg = json.load(f)

        # --- Thư mục source project (chứa Game-DONOTEDIT, translation, patch...) ---
        sp = self.cfg.get("source_project")
        if sp:
            sp = Path(os.path.expandvars(sp))
            if not sp.exists():
                raise FileNotFoundError(f"Không tìm thấy source project: {sp}")
            self.source = sp
        else:
            # Tự dò: tìm folder có Game-DONOTEDIT trong E:\
            raise ValueError('config thiếu "source_project"')

        pp = self.cfg.get("paths", {})
        bp = self.cfg.get("build", {})

        self.pristine = _resolve(self.source, pp.get("pristine_game", "Game-DONOTEDIT"))
        self.translation = _resolve(self.source, pp.get("translation_dir", "translation"))
        self.legacy_patch = _resolve(self.source, pp.get("legacy_patch_dir", "patch"))
        self.patch_release = _resolve(self.source, pp.get("patch_release_dir", "patch-release"))
        self.test_game = _resolve(self.source, pp.get("test_game_dir", "")) if pp.get("test_game_dir") else None

        # --- Thư mục build (lưu nội tại pipeline, tách khỏi source project) ---
        self.build_root = _resolve(WORK_DIR, bp.get("root", "build-vn"))
        self.build_pc = self.build_root / bp.get("pc_dir", "pc")
        self.build_patch = self.build_root / bp.get("patch_dir", "patch")
        self.releases = self.build_root / bp.get("releases_dir", "releases")
        self.data_vn = self.build_root / bp.get("data_vn_dir", "data_vn")

        self.plugins_kit = PIPELINE_DIR / "plugins-kit"
        self.work = PIPELINE_DIR / ".work"
        self.state = self.work / "state.json"
        self.logs = self.work / "logs"

    def source_abs(self, value):
        return _resolve(self.source, value)

    def csv_path(self, key):
        name = self.cfg.get("csv", {}).get(key)
        return self.translation / name if name else None

    def ensure(self):
        for d in [self.build_root, self.build_pc, self.build_patch,
                  self.releases, self.data_vn, self.work, self.logs]:
            d.mkdir(parents=True, exist_ok=True)

    def summary(self):
        return {
            "pipeline": str(PIPELINE_DIR),
            "source_project": str(self.source),
            "pristine_game": str(self.pristine),
            "translation": str(self.translation),
            "build_root": str(self.build_root),
            "data_vn": str(self.data_vn),
            "releases": str(self.releases),
        }
