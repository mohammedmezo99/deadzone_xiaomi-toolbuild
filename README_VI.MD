<div align="center">

# ⚡ DeadZone — Xiaomi ROM Automation Engine

### English mirror of the main project README.

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-0f172a?style=for-the-badge&logo=gnu)](https://www.gnu.org/licenses/gpl-3.0)
![Platform](https://img.shields.io/badge/Platform-Linux%20x86__64-1d4ed8?style=for-the-badge&logo=linux&logoColor=white)
![Shell](https://img.shields.io/badge/Shell-Bash-16a34a?style=for-the-badge&logo=gnubash&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.x-f59e0b?style=for-the-badge&logo=python&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-Automated-2563eb?style=for-the-badge&logo=githubactions&logoColor=white)
![DeadZone by MEZO](https://img.shields.io/badge/DeadZone%20by-MEZO-dc2626?style=for-the-badge)

**Primary README:** [README.MD](README.MD)

</div>

---

## 📘 Mirror Note

This file is kept as an English mirror for legacy repository references. The main documentation remains in [README.MD](README.MD).

## 🚀 Project Summary

DeadZone transforms official Xiaomi MIUI / HyperOS firmware packages into customized flashable ROM builds through an automated pipeline for extraction, patching, repacking, upload, and Telegram notification delivery.

## ⚡ Quick Start

```bash
git clone https://github.com/mohammedmezo99/deadzone_xiaomi-toolbuild.git
cd deadzone_xiaomi-toolbuild
bash setup.sh
```

```bash
bash build.sh "<URL_OR_PATH_TO_XIAOMI_FIRMWARE>"
bash packROM.sh
bash uploadROM.sh
```

## ☁️ Secrets And Upload Setup

Required for Telegram private notifications:

| Secret | Purpose |
| --- | --- |
| `TELEGRAM_BOT_TOKEN` | Telegram bot token used by the notification script |
| `TELEGRAM_CHANNEL_ID` | Existing repository secret name for the Telegram target. For private notifications, set this to your personal Telegram chat ID. |

Required for Google Drive upload:

| Secret | Purpose |
| --- | --- |
| `RCLONE_CONFIG_B64` | Recommended method. Stores the full `rclone.conf` content as a Base64 GitHub Actions secret. |

Optional Google Drive settings:

| Variable | Default | Purpose |
| --- | --- | --- |
| `GDRIVE_REMOTE` | `gdrive` | Rclone remote name to use for upload and public link generation |
| `GDRIVE_PATH` | `DeadZoneBuilds` | Destination folder path inside the configured Google Drive remote |

Legacy fallback:

| Secret | Purpose |
| --- | --- |
| `GH_TOKEN` | GitHub token used to fetch a hosted legacy `rclone.conf` |
| `GH_REPO` | Repository source for the hosted legacy `rclone.conf` |
| `RCLONE_TOKEN_PATH` | Path to the hosted legacy `rclone.conf` file |

`RCLONE_CONFIG_B64` is the preferred setup. It keeps the complete `rclone.conf` inside GitHub Actions secrets, so this repository does not depend on a separate private secrets repository.

Windows PowerShell:

```powershell
$B64 = [Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\path\to\rclone.conf"))
$B64 | Set-Clipboard
```

Linux / Bash:

```bash
base64 -w 0 rclone.conf
```

The rclone remote name inside `rclone.conf` must match `GDRIVE_REMOTE`.

Default expected remote:

```ini
[gdrive]
```

If your remote is `[starxONEDRIVE]`, set:

```text
GDRIVE_REMOTE=starxONEDRIVE
```

## 🌐 Community

| Community | Link |
| --- | --- |
| 📢 Channel | https://t.me/xDeadZone |
| 💬 Discussion | https://t.me/DeadZoneDiscussion |
| 🖼️ Screenshots / Cloud | https://t.me/DeadZoneCloud |
| 👨‍💻 Developer | https://t.me/MohamedMezo1 |

## 📄 License

DeadZone is licensed under **GPL-3.0**. See [LICENSE](LICENSE) for details.

---

<div align="center">

### ⚡ Project DeadZone By MEZO

Built for clean Xiaomi ROM automation, controlled patching, and powerful cloud builds.

</div>
