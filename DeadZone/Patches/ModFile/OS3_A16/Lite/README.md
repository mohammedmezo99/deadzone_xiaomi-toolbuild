# Lite OS3_A16 Manual Runtime Pack

This pack is generated from `Lite(1).zip`, but runtime does **not** use `.mtcr` comparison files.

Runtime path:

```text
DeadZone/Patches/ModFile/OS3_A16/Lite/
```

What this pack contains:

- `patches/generated_smali/Settings/` — real smali class templates extracted from the Lite reference.
- `resources/Settings/res/` — Settings resources ready to be copied into the decompiled APK.
- `resources/Settings/axml_b/` — clean XML replacement extracted from the AXML comparison, without using `.mtcr` at runtime.
- `resources/MiuiSystemUI/res/` — MiuiSystemUI resources ready to be copied into the decompiled APK.
- `patches/*.sh` — executable patch modules.
- `insmod.sh` — orchestrator only.

Counts:

- Settings smali classes: 50
- Settings resources: 15
- MiuiSystemUI resources: 7
- AXML replacements: 1
- ARSC readable exports: 21

No `.mtcr` files are included in this runtime pack.
