#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Console helpers: ANSI màu, banner, ghi log ra file theo thời gian thực."""
import sys
import os
import time
from datetime import datetime

# Bật VT100 trên Win10/11 để màu chạy tốt trong terminal/cmd.
if os.name == "nt":
    try:
        import ctypes
        kernel32 = ctypes.windll.kernel32
        # Enable virtual terminal processing for stdout & stderr
        for handle in (-11, -12):
            h = kernel32.GetStdHandle(handle)
            mode = ctypes.c_uint32()
            if kernel32.GetConsoleMode(h, ctypes.byref(mode)):
                kernel32.SetConsoleMode(h, mode.value | 0x0004)
    except Exception:
        pass

USE_COLOR = sys.stdout.isatty() or os.environ.get("FORCE_COLOR") == "1"

class C:
    RESET = "\033[0m"
    BOLD = "\033[1m"
    DIM = "\033[2m"
    RED = "\033[91m"
    GREEN = "\033[92m"
    YELLOW = "\033[93m"
    BLUE = "\033[94m"
    MAGENTA = "\033[95m"
    CYAN = "\033[96m"
    GREY = "\033[90m"

def _c(code, text):
    return f"{code}{text}{C.RESET}" if USE_COLOR else str(text)

def banner(title, subtitle=None):
    line = "=" * 66
    out = [
        _c(C.BOLD + C.CYAN, line),
        _c(C.BOLD + C.CYAN, f"  {title}"),
    ]
    if subtitle:
        out.append(_c(C.GREY, f"  {subtitle}"))
    out.append(_c(C.BOLD + C.CYAN, line))
    print("\n".join(out))

def step(title):
    print(_c(C.BOLD + C.BLUE, f"\n>> {title}"))

def ok(msg):
    print(_c(C.GREEN, "  [OK]  ") + msg)

def warn(msg):
    print(_c(C.YELLOW, "  [!!]  ") + str(msg))

def err(msg):
    print(_c(C.RED, "  [XX]  ") + str(msg))

def info(msg):
    print(_c(C.GREY, "  [..]  ") + str(msg))

def kv(key, value, color=None):
    prefix = _c(C.GREY, f"  {key:<22}: ")
    body = _c(color or "", str(value))
    print(prefix + body)

class Logger:
    """Ghi log ra file đồng thời in ra console (chỉ ghi từ chỗ gọi)."""
    def __init__(self, log_path=None):
        self.log_path = log_path
        self._fh = None
        if log_path:
            try:
                os.makedirs(os.path.dirname(log_path), exist_ok=True)
                self._fh = open(log_path, "a", encoding="utf-8")
                self._fh.write(f"\n===== {datetime.now():%Y-%m-%d %H:%M:%S} =====\n")
                self._fh.flush()
            except Exception:
                self._fh = None

    def log(self, msg):
        if self._fh:
            try:
                self._fh.write(str(msg) + "\n")
                self._fh.flush()
            except Exception:
                pass

    def close(self):
        if self._fh:
            try:
                self._fh.close()
            except Exception:
                pass


def now_stamp():
    return datetime.now().strftime("%Y%m%d_%H%M%S")

def elapsed(t0):
    return f"{time.perf_counter() - t0:.1f}s"
