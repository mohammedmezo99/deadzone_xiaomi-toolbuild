<div align="center">

# ⚡ DeadZone — Xiaomi ROM Automation Engine

### A powerful GitHub Actions based build system for modifying, repacking, notifying, and uploading Xiaomi MIUI / HyperOS ROMs.

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-0f172a?style=for-the-badge&logo=gnu)](https://www.gnu.org/licenses/gpl-3.0)
![Platform](https://img.shields.io/badge/Platform-Linux%20x86__64-1d4ed8?style=for-the-badge&logo=linux&logoColor=white)
![Shell](https://img.shields.io/badge/Shell-Bash-16a34a?style=for-the-badge&logo=gnubash&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.x-f59e0b?style=for-the-badge&logo=python&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-Automated-2563eb?style=for-the-badge&logo=githubactions&logoColor=white)
![DeadZone by MEZO](https://img.shields.io/badge/DeadZone%20by-MEZO-dc2626?style=for-the-badge)

**Language:** English | [English Mirror](README_VI.MD)

</div>

---

## 🚀 Overview

DeadZone transforms official Xiaomi MIUI / HyperOS firmware packages into customized flashable ROM builds through an automated pipeline.

It is built around existing shell automation, patch flows, packaging logic, Telegram notifications, and cloud upload stages already present in this repository. The result is a more repeatable ROM workflow for maintainers who want to process Xiaomi firmware with GitHub Actions or local Linux builds.

> [!NOTE]
> DeadZone documents only the automation that already exists in this repository. It does not claim universal device compatibility, guaranteed patch success, or support beyond the implemented scripts and packaged tools.

## ✨ Feature Table

| Area | Capability |
| --- | --- |
| 📦 ROM Input | Supports `payload.bin`, `new.dat.br`, and split `super.img` based firmware flows |
| 🧩 Mods | Applies the existing HyperOS / MIUI modification and update scripts included in `bin/modfile/` |
| 🛠️ Packaging | Rebuilds extracted partitions and packs a flashable ROM ZIP output |
| ☁️ Upload | Uses the current upload flow through `rclone` and the configured remote target |
| 📣 Notifications | Sends build status updates through the existing Telegram notification script |
| ⚙️ Automation | Supports manual GitHub Actions workflow execution for cloud-based builds |

## 🧭 Pipeline

```text
┌──────────────┐
│  Download    │
│  Base ROM    │
└──────┬───────┘
       ↓
┌──────────────┐
│  Extract     │
│  Partitions  │
└──────┬───────┘
       ↓
┌──────────────┐
│  Patch       │
│  ROM Files   │
└──────┬───────┘
       ↓
┌──────────────┐
│  Repack      │
│  ROM ZIP     │
└──────┬───────┘
       ↓
┌──────────────┐
│  Upload      │
│  Build Output│
└──────┬───────┘
       ↓
┌──────────────┐
│  Notify      │
│  Telegram    │
└──────────────┘
```

## 🗂️ Repository Structure

```text
deadzone_xiaomi-toolbuild/
├── build.sh              # Main build entry
├── functions.sh          # Shared build functions
├── packROM.sh            # ROM packaging flow
├── uploadROM.sh          # Upload handler
├── setup.sh              # Environment setup
├── notify.py             # Telegram notification helper
├── config.env            # Runtime configuration
├── Version               # Project version marker
├── bin/                  # Tools, patchers, device scripts, mods
└── .github/workflows/    # GitHub Actions workflow
```

## 📋 Requirements

Install the required Linux userspace tools before running a local build:

```bash
unzip aria2c 7z zip java zipalign python3 zstd bc xmlstarlet aapt
```

DeadZone also provides an environment bootstrap script:

```bash
bash setup.sh
```

## ⚡ Quick Start

Clone the repository and prepare the build environment:

```bash
git clone https://github.com/mohammedmezo99/deadzone_xiaomi-toolbuild.git
cd deadzone_xiaomi-toolbuild
bash setup.sh
```

Run the standard local flow:

```bash
bash build.sh "<URL_OR_PATH_TO_XIAOMI_FIRMWARE>"
bash packROM.sh
bash uploadROM.sh
```

> [!TIP]
> In GitHub Actions, additional builder metadata is passed automatically by the workflow. For local usage, the core requirement is the ROM URL or local firmware path accepted by `build.sh`.

## 🧪 Supported Input Flows

| Format | Detection | Purpose |
| --- | --- | --- |
| `payload.bin` | Automatic | OTA payload extraction path |
| `new.dat.br` | Automatic | Brotli-compressed partition extraction path |
| `images/super.img.*` | Automatic | Split super image merge and unpack path |

## ☁️ GitHub Actions

The repository includes a manually triggered GitHub Actions workflow for cloud-based ROM builds.

### Manual Workflow

| Input | Description |
| --- | --- |
| `input_url` | URL of the Xiaomi firmware package to process |
| `builder_name` | Optional display name shown in build notifications |
| `builder_id` | Optional Telegram user ID for direct completion messages |

### Required Secrets

| Secret | Purpose |
| --- | --- |
| `GH_TOKEN` | GitHub token used during upload setup |
| `GH_REPO` | Repository source for the uploaded `rclone` configuration |
| `RCLONE_TOKEN_PATH` | Path to the `rclone.conf` file stored in the target repository |
| `TELEGRAM_BOT_TOKEN` | Telegram bot token for build notifications |
| `TELEGRAM_CHANNEL_ID` | Telegram destination used by the notification script |

## ⚙️ Configuration

Runtime behavior is controlled through the existing `config.env` file and workflow environment variables.

Current `config.env` keys in this repository:

| Key | Purpose |
| --- | --- |
| `install_toolbox` | Controls toolbox installation behavior in the existing setup flow |
| `install_mods` | Controls mod installation behavior in the existing setup flow |

## 🌐 Community

| Community | Link |
| --- | --- |
| 📢 Channel | https://t.me/xDeadZone |
| 💬 Discussion | https://t.me/DeadZoneDiscussion |
| 🖼️ Screenshots / Cloud | https://t.me/DeadZoneCloud |
| 👨‍💻 Developer | https://t.me/MohamedMezo1 |

## 🤝 Credits

DeadZone builds on the scripts, packaged binaries, patch resources, and third-party tooling already included in this repository. Existing upstream notices and embedded tool attributions remain the authoritative source for those components.

## 📄 License

This project is licensed under **GPL-3.0**. See the [LICENSE](LICENSE) file for the full license text.

---

<div align="center">

### ⚡ Project DeadZone By MEZO

Built for clean Xiaomi ROM automation, controlled patching, and powerful cloud builds.

⭐ Star the repo if DeadZone helps your workflow.

</div>
