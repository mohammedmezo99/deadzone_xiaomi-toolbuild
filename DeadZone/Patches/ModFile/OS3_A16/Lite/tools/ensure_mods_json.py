#!/usr/bin/env python3
"""Add/fix lite_os3_a16_pack entry in DeadZone/Styles/Lite/mods.json."""
import json
from pathlib import Path

repo = Path.cwd()
mods_path = repo / "DeadZone/Styles/Lite/mods.json"
entry = {
    "id": "lite_os3_a16_pack",
    "name": "Lite OS3_A16 Manual Runtime Smali/Resource Pack",
    "enabled": True,
    "required": False,
    "style_only": "lite",
    "platform_only": "OS3_A16",
    "android_only": "16",
    "script_path": "DeadZone/Patches/ModFile/OS3_A16/Lite/insmod.sh",
    "description": "Applies Lite-only Android 16 Settings/SystemUI smali/resource runtime patches. Runtime does not depend on .mtcr comparison files.",
}

def load_json(path: Path):
    if not path.exists():
        return []
    return json.loads(path.read_text(encoding="utf-8"))

def save_json(path: Path, data):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(data, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")

data = load_json(mods_path)
if isinstance(data, list):
    data = [m for m in data if not (isinstance(m, dict) and m.get("id") == entry["id"])]
    data.append(entry)
elif isinstance(data, dict):
    mods = data.get("mods")
    if isinstance(mods, list):
        data["mods"] = [m for m in mods if not (isinstance(m, dict) and m.get("id") == entry["id"])]
        data["mods"].append(entry)
    else:
        data["mods"] = [entry]
else:
    data = [entry]
save_json(mods_path, data)
print(f"Updated {mods_path} with {entry['id']}")
