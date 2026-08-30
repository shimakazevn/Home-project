# AGENT GUIDELINES & IRONCLAD RULES - HOME [RJ01556529]

This project is the Vietnamese Localization for the Visual Novel **HOME**.
All autonomous AI agents working in this workspace MUST follow the rules defined below without exception:

## 1. Single Source of Truth (SSOT)
- Main scenario dialogues: `translation/text_export.xlsx` (or `translation/text_export.csv`)
- UI / Choices / Minigame / Shop text: `translation/ui_export.xlsx` (or `translation/ui_export.csv`)
- Original reference scripts (read-only): `extracted_scripts/data/scenario/*.ks`
- NEVER create loose translation scripts or fragmented dictionaries outside `translation/`.

## 2. Code Guard & Engine Tags
- NEVER overwrite or strip TyranoScript system tags: `[if]`, `[endif]`, `[jump]`, `[macro]`, `[endmacro]`, `[iscript]`, `[endscript]`, `[commit]`, `[playse]`.
- Always use `[r]` for line breaks in dialogues. NEVER use `\n` or raw Enter in CSV/Excel text.
- Preserve `[p]`, `[l]`, `[emb exp="..."]` exactly.

## 3. Automated Integrity Verification
- MUST run `python tools/verify_patch_integrity.py` before building or releasing patches.
- Must ensure 0 tag mismatch errors, 0 untranslated lines, 0 missing assets.

## 4. Pipeline & Build Commands
- Master Build: `python tools/build_pc_patch.py` (or `BUILD_PATCH_PC.bat`)
- Direct Installer: `dist_pc/CAI_DAT_PATCH_VIET_HOA.exe` (or `CAI_DAT_PATCH_VIET_HOA.bat`)

For full details, refer to `GEMINI.md` and `GEMINI_WORKSPACE_PROMPT.md`.
