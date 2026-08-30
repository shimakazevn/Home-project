#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
tools/build_web_cdn_interceptor.py
Tự động nhúng trực tiếp bảng manifest 2,709 files vào cdn_interceptor/init.js
để đảm bảo đồng bộ 100% (0ms latency, không phụ thuộc network async fetch, chống race condition tuyệt đối).
"""

import os
import sys
import json
import re

sys.stdout.reconfigure(encoding='utf-8')

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MANIFEST_PATH = os.path.join(ROOT_DIR, 'data', 'asset_manifest.json')
INIT_JS_PATH = os.path.join(ROOT_DIR, 'patch', 'data', 'others', 'plugin', 'cdn_interceptor', 'init.js')

def update_cdn_interceptor():
    with open(MANIFEST_PATH, 'r', encoding='utf-8') as f:
        manifest = json.load(f)

    with open(INIT_JS_PATH, 'r', encoding='utf-8') as f:
        js_content = f.read()

    manifest_json_str = json.dumps(manifest, ensure_ascii=False)

    # 1. Thay thế hoặc chèn EMBEDDED_MANIFEST
    embedded_block = f"    const EMBEDDED_MANIFEST = {manifest_json_str};\n"
    if "const EMBEDDED_MANIFEST =" in js_content:
        js_content = re.sub(
            r'const EMBEDDED_MANIFEST\s*=\s*\{.*?\};',
            f'const EMBEDDED_MANIFEST = {manifest_json_str};',
            js_content,
            flags=re.DOTALL
        )
    else:
        # Chèn ngay sau 'use strict';
        js_content = js_content.replace(
            "'use strict';",
            f"'use strict';\n\n{embedded_block}"
        )

    # 2. Cập nhật biến assetManifest
    js_content = re.sub(
        r'let assetManifest\s*=\s*null;',
        'let assetManifest = (typeof EMBEDDED_MANIFEST !== "undefined" && EMBEDDED_MANIFEST) ? EMBEDDED_MANIFEST : null;',
        js_content
    )

    with open(INIT_JS_PATH, 'w', encoding='utf-8') as f:
        f.write(js_content)

    print(f"[OK] Đã nhúng thành công {len(manifest)} CDN routes vào {INIT_JS_PATH} ({round(len(js_content)/1024, 2)} KB)")

if __name__ == '__main__':
    update_cdn_interceptor()
