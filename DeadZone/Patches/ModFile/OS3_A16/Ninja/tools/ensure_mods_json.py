#!/usr/bin/env python3
import json
from pathlib import Path
p=Path('DeadZone/Styles/Ninja/mods.json')
entry={"id":"ninja_os3_a16_pack","name":"Ninja OS3_A16 Exclusive Smali Patch Pack","enabled":True,"required":False,"style_only":"ninja","platform_only":"OS3_A16","android_only":"16","script_path":"DeadZone/Patches/ModFile/OS3_A16/Ninja/insmod.sh","description":"Applies Ninja-only Android 16 smali/resource patches after Lite base. Runtime does not depend on .mtcr comparison files."}
if not p.exists(): raise SystemExit(f"Missing {p}")
data=json.loads(p.read_text(encoding='utf-8'))
if isinstance(data, dict):
    mods=data.get('mods') or data.get('patches') or data.get('items')
    if mods is None: data.setdefault('mods', []); mods=data['mods']
elif isinstance(data, list): mods=data
else: raise SystemExit('Unsupported mods.json shape')
for i,m in enumerate(mods):
    if isinstance(m, dict) and m.get('id')=='ninja_os3_a16_pack': mods[i]=entry; break
else: mods.append(entry)
p.write_text(json.dumps(data, indent=2, ensure_ascii=False)+"\n", encoding='utf-8')
print('Updated', p)
