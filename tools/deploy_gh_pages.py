# -*- coding: utf-8 -*-
"""
deploy_gh_pages.py
Tự động đẩy thư mục dist_web lên nhánh 'gh-pages' của GitHub repo.
"""

import os
import sys
import subprocess
import shutil

sys.stdout.reconfigure(encoding='utf-8')

WEB_DIST_DIR = r'E:\HOME_\dist_web'
REPO_URL = r'https://github.com/shimakazevn/Home-project.git'

def deploy():
    print("==================================================")
    print("   DEPLOY BẢN WEB LÊN GITHUB PAGES (gh-pages)")
    print("==================================================")

    if not os.path.exists(WEB_DIST_DIR):
        print(f"[LỖI] Thư mục {WEB_DIST_DIR} không tồn tại. Hãy chạy build_web_release.py trước.")
        sys.exit(1)

    # Đảm bảo có file .nojekyll
    nojekyll_path = os.path.join(WEB_DIST_DIR, '.nojekyll')
    with open(nojekyll_path, 'w', encoding='utf-8') as f:
        f.write("# Disable Jekyll\n")

    # Xóa thư mục .git cũ trong dist_web nếu có để tạo mới sạch sẽ
    git_dir = os.path.join(WEB_DIST_DIR, '.git')
    if os.path.exists(git_dir):
        shutil.rmtree(git_dir, ignore_errors=True)

    cmds = [
        ['git', 'init'],
        ['git', 'checkout', '-B', 'gh-pages'],
        ['git', 'add', '-A'],
        ['git', 'commit', '-m', 'Deploy HOME Web Visual Novel (Blogger CDN Edition)'],
        ['git', 'remote', 'add', 'origin', REPO_URL],
        ['git', 'push', '-f', 'origin', 'gh-pages']
    ]

    for cmd in cmds:
        print(f"[*] Chạy lệnh: {' '.join(cmd)}")
        res = subprocess.run(cmd, cwd=WEB_DIST_DIR, capture_output=True, text=True)
        if res.returncode != 0:
            print(f"[LỖI] {res.stderr}")
            sys.exit(1)
        if res.stdout:
            print(res.stdout.strip())

    print("\n==================================================")
    print("   ✅ ĐÃ PUSH THÀNH CÔNG LÊN NHÁNH gh-pages!")
    print("   🔗 Link Web Game (GitHub Pages):")
    print("   👉 https://shimakazevn.github.io/Home-project/")
    print("==================================================")

if __name__ == '__main__':
    deploy()
