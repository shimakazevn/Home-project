#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Parser sự kiện RPG Maker MZ dùng chung cho export & import.

Ánh xạ các lệnh trong `list` (code 101 = Show Text header, 401 = Text Line,
102 = Show Choices) thành các "khối" hội thoại có thể so khớp với CSV.
"""
import re


def clean_speaker(raw):
    """Làm sạch tên người nói: bỏ \C[N], \c[N], \N[N], \V[N]."""
    if not raw:
        return ""
    s = re.sub(r'\\[Cc]\[\d+\]', '', raw)
    s = re.sub(r'\\[Nn]\[\d+\]', '', s)
    s = re.sub(r'\\[Vv]\[\d+\]', '', s)
    return s.strip()


def is_empty(s):
    return not s or str(s).strip() == ""


def get_speaker(cmd):
    params = cmd.get("parameters", [])
    if len(params) > 4 and params[4]:
        return str(params[4])
    return ""


def extract_dialogue_blocks(cmd_list):
    """Trích các khối hội thoại (dialogue & choice) từ một list lệnh.

    - dialogue: 1 lệnh code=101 (header) + các lệnh code=401 (line) ngay sau.
    - choice:   các mục trong lệnh code=102 (Show Choices).
    """
    blocks = []
    i = 0
    n = len(cmd_list)
    while i < n:
        cmd = cmd_list[i]
        code = cmd.get("code", 0)
        params = cmd.get("parameters", [])

        if code == 101:
            speaker = get_speaker(cmd)
            lines = []
            j = i + 1
            while j < n and cmd_list[j].get("code") == 401:
                p = cmd_list[j].get("parameters", [])
                if p:
                    lines.append(str(p[0]))
                j += 1
            full_text = "\n".join(lines)
            if not is_empty(full_text):
                blocks.append({
                    "type": "dialogue",
                    "index": i,
                    "end_401_index": j,
                    "speaker_raw": speaker,
                    "text": full_text.strip(),
                    "indent": cmd.get("indent", 0),
                })
            i = j
            continue

        elif code == 102:
            choices = params[0] if params else []
            if isinstance(choices, list):
                for ci, choice in enumerate(choices):
                    if choice and not is_empty(str(choice)):
                        blocks.append({
                            "type": "choice",
                            "index": i,
                            "speaker_raw": "[Choice]",
                            "text": str(choice).strip(),
                            "choice_idx": ci,
                            "indent": cmd.get("indent", 0),
                        })
        i += 1
    return blocks


def parse_page_idx(event_name):
    m = re.search(r'\[p(\d+)\]$', event_name or "")
    return int(m.group(1)) if m else 0


def iter_cmd_lists(data):
    """Duyệt mọi cmd_list trong một file dữ kiện (Map / CommonEvents).

    Yield (container, cmd_list, cmd, parent_dict_or_index).
    Dùng để patch các lệnh plugin (code 357/657) theo đệ quy.
    """
    def walk(obj):
        if isinstance(obj, list):
            for idx, item in enumerate(obj):
                yield from walk(item)
        elif isinstance(obj, dict):
            if isinstance(obj.get("list"), list):
                for cmd in obj["list"]:
                    yield obj, cmd
            for v in obj.values():
                yield from walk(v)
    yield from walk(data)
