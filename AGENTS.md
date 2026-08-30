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

## 5. Strict Isolation of PC Patch Staging (`patch/`)
- The `patch/` directory is strictly the release payload for the PC installer (contains ~285 files).
- ONLY put translated scenario `.ks` files, font files (`NotoSansJP-*.ttf`), `patch/tyrano/css/font.css`, `auto_wrap` plugin, and `Config.tjs` in `patch/`.
- **NEVER** copy entire raw plugin folders (like `theme_kopanda_09_2/`) or game assets into `patch/`.

## 6. Typography & UI Preservation (No Destructive CSS Overrides)
- NEVER apply destructive `font-size: ... !important` or force layout on `.chara_name_area` or `.message_inner`.
- In HOME, the speaker nameplate is intentionally hidden with `size=0` at `(0, 0)` in `message_window.ks`. Forcing `.chara_name_area` visibility causes speaker names to duplicate in the top-left corner and distorts action wheel / parameter UI layouts.

## 7. Online Auto-Patcher & Mandatory Git Push Sync
- The installer is a pure Online Auto-Patcher (`tools/unified_patch_installer.py`) utilizing Windows native `curl.exe -L`.
- In `unified_patch_installer.py`, `parse_patch_from_zip()` MUST strictly target the `patch/` folder inside GitHub archive `main.zip` (copying only the 285 patch files, NEVER pulling 1100+ files from root `data/`).
- Whenever scenario, UI, or patch files are modified, AI MUST run `git push origin main` so the GitHub remote repository is immediately updated.

## 8. Strict Separation: Scenario Updates vs. Installer EXE Rebuild
- **When ONLY modifying scenarios (`.ks`), translations, UI, or text:**
  - DO NOT rebuild the EXE installer with PyInstaller (`tools/build_pc_patch.py`).
  - Required workflow: Re-export/sync `.ks` $\rightarrow$ QA test (`python tools/verify_patch_integrity.py`) $\rightarrow$ `git push origin main`.
- **When to Rebuild EXE (`build_pc_patch.py`):**
  - ONLY when modifying the installer application itself (`tools/unified_patch_installer.py`), GUI layout, `curl` downloader logic, or bundled assets (`installer_bg.png`, `tyrano.ico`).

## 9. Automated Integrity & SHA256 Verification
- MUST run `python tools/verify_patch_integrity.py` before releasing scenario updates or rebuilding installers.
- Must ensure 0 tag mismatch errors, 0 untranslated lines, 0 missing assets, and 100% SHA256 checksum match across all patch files.

## 10. Pipeline & Build Commands
- Master Build (EXE only): `python tools/build_pc_patch.py` (or `BUILD_PATCH_PC.bat`)
- Direct Installer: `dist_pc/CAI_DAT_PATCH_VIET_HOA.exe` (or `CAI_DAT_PATCH_VIET_HOA.bat`)
- Web Build: `python tools/build_web_release.py` (or `BUILD_WEB.bat`)
- Web Deploy: `python tools/build_web_release.py --deploy` (or `DEPLOY_WEB.bat`)

For full details, refer to `GEMINI.md` and `GEMINI_WORKSPACE_PROMPT.md`.
