# Ninja OS3_A16 Runtime Smali Pack

Runtime does **not** use `.mtcr` files. The comparison files were converted into generated smali/resource templates under `patches/generated_smali/` and `resources/MiuiSystemUI/`.

## Counts
- Reference files inspected: 10
- Modified classes: 150
- Added classes: 346
- Generated smali patch functions/templates: 496
- Raw MiuiSystemUI resources copied: 541
- AXML resources converted: 20
- ARSC value exports converted: 224
- Blockers: 0

## mods.json entry
Use `python DeadZone/Patches/ModFile/OS3_A16/Ninja/tools/ensure_mods_json.py` from repo root to add/update `ninja_os3_a16_pack`.
