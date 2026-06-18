<div align="center">

# DeadZone

**Xiaomi Custom ROM Builder** for automated MIUI and HyperOS firmware modification.

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Version](https://img.shields.io/badge/version-v1.0-green.svg)](#)
[![Platform](https://img.shields.io/badge/platform-Linux%20x86__64-lightgrey.svg)](#)

**Language:** English | [English Mirror](README_VI.MD)

</div>

## Overview

DeadZone transforms official Xiaomi MIUI and HyperOS firmware into a customized flashable ROM package. The repository automates download, extraction, patching, repacking, notification, and upload steps through shell scripts and GitHub Actions.

Preferred footer:

`Project DeadZone By MEZO`

## Features

- Google Apps integration for supported domestic ROM variants
- Support for `payload.bin`, `new.dat.br`, and split `super.img` firmware formats
- Mods for HyperOS 1, HyperOS 2, and HyperOS 3
- Support for A-only and Virtual A/B partition layouts
- Automated build, packaging, notification, and upload flow with GitHub Actions

## Project Structure

```text
deadzone_xiaomi-toolbuild/
├── build.sh
├── functions.sh
├── packROM.sh
├── uploadROM.sh
├── setup.sh
├── config.env
├── Version
├── notify.py
├── bin/
└── .github/workflows/build.yml
```

## Requirements

Make sure these tools are available on a Linux `x86_64` system:

```bash
unzip aria2c 7z zip java zipalign python3 zstd bc xmlstarlet aapt
```

You can also install the required packages with:

```bash
bash setup.sh
```

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

## Supported ROM Formats

| Format | Detection | Description |
| --- | --- | --- |
| `payload.bin` | Auto | Standard Xiaomi OTA payload format |
| `new.dat.br` | Auto | Brotli-compressed system images |
| `super.img.*` | Auto | Split super image packages |

## GitHub Actions

The existing workflow supports manual builds through GitHub Actions.

### Required Secrets

| Secret | Description |
| --- | --- |
| `GH_REPO` | Target GitHub repository in `owner/repo` format |
| `GH_TOKEN` | GitHub token used by the upload setup step |
| `RCLONE_TOKEN_PATH` | Path to the `rclone.conf` file stored in the target repository |
| `TELEGRAM_BOT_TOKEN` | Telegram bot token for notifications |
| `TELEGRAM_CHANNEL_ID` | Telegram channel or discussion target for notifications |

### Workflow Inputs

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

## Developer

MEZO

## License

This project is licensed under the **GNU General Public License v3.0**. See [LICENSE](LICENSE) for details.

<div align="center">

**Project DeadZone By MEZO**

</div>
