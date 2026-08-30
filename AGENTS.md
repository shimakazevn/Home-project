# AGENT GUIDELINES & IRONCLAD RULES - HOME [RJ01556529]

This project is the Vietnamese Localization for the Visual Novel **HOME** (RJ01556529).
All autonomous AI agents working in this workspace MUST follow the rules defined below without exception:

## 1. Single Source of Truth (SSOT)
- Main scenario dialogues: `translation/text_export.xlsx` (or `translation/text_export.csv`)
- UI / Choices / Minigame / Shop text: `translation/ui_export.xlsx` (or `translation/ui_export.csv`)
- Original reference scripts (read-only): `extracted_scripts/data/scenario/*.ks`
- NEVER create loose translation scripts or fragmented dictionaries outside `translation/`.

## 2. Official Game Title: STRICTLY "HOME"
- Official title is strictly **HOME**.
- NEVER append or use `(ROOM)` or `ROOM` anywhere in docs, scripts, code, UI labels, or window titles.

## 3. Protagonist Default Name Guard (`name.ks`)
- The protagonist's default name input MUST always initialize to Romaji:
  - Family name: **`Hidaka`**
  - Given name: **`Shun`**
- In `name.ks`, `[edit]` tags MUST specify `initial="Hidaka"` and `initial="Shun"`, preceded by `f.familyname = 'Hidaka'; f.name = 'Shun';` and jQuery pre-fill `$(".text_box").eq(0).val('Hidaka'); $(".text_box").eq(1).val('Shun');`.
- NEVER allow raw Japanese Kanji `日高` / `舜` to appear in name input fields.

## 4. Code Guard & Engine Tags
- NEVER overwrite or strip TyranoScript system tags: `[if]`, `[endif]`, `[jump]`, `[macro]`, `[endmacro]`, `[iscript]`, `[endscript]`, `[commit]`, `[playse]`.
- Always use `[r]` for line breaks in dialogues. NEVER use `\n` or raw Enter in CSV/Excel text.
- Preserve `[p]`, `[l]`, `[emb exp="..."]` exactly.

## 5. Online Auto-Patcher & Mandatory Git Push Sync
- The installer is a pure Online Auto-Patcher (`tools/unified_patch_installer.py`) utilizing Windows native `curl.exe -L`.
- Whenever scenario or UI files are modified, AI MUST run `git push origin main` so the GitHub remote repository is immediately updated. The online installer on end-users' PCs will automatically fetch new changes without requiring a new EXE.

## 6. Strict Separation: Scenario Updates vs. Installer EXE Rebuild
- **When ONLY modifying scenarios (`.ks`), translations, UI, or text:**
  - DO NOT rebuild the EXE installer with PyInstaller (`tools/build_pc_patch.py`).
  - Required workflow: Re-export/sync `.ks` $\rightarrow$ QA test (`python tools/verify_patch_integrity.py`) $\rightarrow$ `git push origin main`.
- **When to Rebuild EXE (`build_pc_patch.py`):**
  - ONLY when modifying the installer application itself (`tools/unified_patch_installer.py`), GUI layout, `curl` downloader logic, or bundled assets (`installer_bg.png`, `tyrano.ico`).

## 7. Automated Integrity & SHA256 Verification
- MUST run `python tools/verify_patch_integrity.py` before releasing scenario updates or rebuilding installers.
- Must ensure 0 tag mismatch errors, 0 untranslated lines, 0 missing assets, and 100% SHA256 checksum match across all 360+ files.

## 8. Pipeline & Build Commands
- Master Build (EXE only): `python tools/build_pc_patch.py` (or `BUILD_PATCH_PC.bat`)
- Direct Installer: `dist_pc/CAI_DAT_PATCH_VIET_HOA.exe` (or `CAI_DAT_PATCH_VIET_HOA.bat`)

For full details, refer to `GEMINI.md` and `GEMINI_WORKSPACE_PROMPT.md`.
