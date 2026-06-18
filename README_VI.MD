<div align="center">

# DeadZone

**English-only mirror of the main repository README.**

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Version](https://img.shields.io/badge/version-v1.0-green.svg)](#)
[![Platform](https://img.shields.io/badge/platform-Linux%20x86__64-lightgrey.svg)](#)

**Language:** [Primary README](README.MD) | English

</div>

## Overview

DeadZone is a Xiaomi ROM build repository maintained under the DeadZone project name by MEZO. It automates download, extraction, patching, packaging, notification, and upload steps for supported MIUI and HyperOS firmware packages.

## Build From Source

```bash
git clone https://github.com/mohammedmezo99/deadzone_xiaomi-toolbuild.git
cd deadzone_xiaomi-toolbuild
```

```bash
bash build.sh <URL_OR_PATH_TO_XIAOMI_FIRMWARE>
bash packROM.sh
bash uploadROM.sh
```

## Workflow Inputs

| Input | Description |
| --- | --- |
| `input_url` | URL of the official Xiaomi firmware package |
| `builder_name` | Optional builder display name |
| `builder_id` | Optional Telegram user ID for direct notifications |

## Community

- Channel: https://t.me/xDeadZone
- Discussion: https://t.me/DeadZoneDiscussion
- Screenshots: https://t.me/DeadZoneCloud
- Developer: https://t.me/MohamedMezo1

## Footer

`Project DeadZone By MEZO`
