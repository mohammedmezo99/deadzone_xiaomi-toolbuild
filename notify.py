import json
import os
import random
import re
import string
import sys
import time
from pathlib import Path

import requests


if hasattr(sys.stdout, "reconfigure"):
    try:
        sys.stdout.reconfigure(encoding="utf-8")
    except Exception:
        pass
if hasattr(sys.stderr, "reconfigure"):
    try:
        sys.stderr.reconfigure(encoding="utf-8")
    except Exception:
        pass


STATE_FILE = Path("bin/output/reports/notify_state.json")
ACTIVITY_FILE = Path("bin/output/reports/live_activity.json")
GDRIVE_REPORTS = [
    Path("output/reports/gdrive_url.txt"),
    Path("bin/output/reports/gdrive_url.txt"),
]
MAX_ACTIVITY_ITEMS = 7
EDIT_INTERVAL_SECONDS = 4.0


def read_file_if_exists(path, default=""):
    file_path = Path(path)
    if file_path.exists():
        try:
            value = file_path.read_text(encoding="utf-8", errors="replace").strip()
            return value if value else default
        except Exception:
            return default
    return default


def get_status_info(status):
    status = status.lower()
    mapping = {
        "start": ("🚀", "Waiting", "Preparing the DeadZone build environment."),
        "download": ("📥", "Running", "Downloading the base ROM package."),
        "unpack": ("🧩", "Running", "Extracting firmware partitions and image data."),
        "build": ("🛠️", "Running", "Applying the configured ROM patching flow."),
        "pack": ("📦", "Running", "Packing the ROM output into a flashable archive."),
        "upload": ("☁️", "Running", "Uploading the completed ROM package."),
        "success": ("✅", "Done", "The DeadZone build finished successfully."),
        "fail": ("❌", "Failed", "The DeadZone build stopped because of an error."),
        "activity": ("🔴", "Running", "Refreshing live ROM activity."),
    }
    return mapping.get(status, ("ℹ️", "Running", status.upper()))


def get_progress_bar(status):
    stages = ["start", "download", "unpack", "build", "pack", "upload", "success"]
    status = status.lower()
    current_index = stages.index(status) if status in stages else -1

    timeline = []
    for index, _stage in enumerate(stages):
        if status == "fail" and index == len(stages) - 1:
            timeline.append("❌")
        elif index < current_index:
            timeline.append("🟢")
        elif index == current_index:
            timeline.append("✅" if status == "success" else "🔵")
        else:
            timeline.append("⚪")
    return " ➜ ".join(timeline)


def is_available(value):
    if not value:
        return False
    return value.strip().lower() not in {"", "unknown", "detecting...", "scanning..."}


def normalize_style_id(raw_value):
    value = (raw_value or "Lite").strip().lower()
    if value == "lite":
        return "lite"
    if value in {"plus", "stable", "free", "gamingplus", "gaming_plus"}:
        return "gamingplus"
    if value in {"legend", "paid"}:
        return "legend"
    if value == "ninja":
        return "ninja"
    return "lite"


def style_display_name(style_id):
    return {
        "lite": "Lite",
        "gamingplus": "GamingPlus",
        "legend": "Legend",
        "ninja": "Ninja",
    }.get(normalize_style_id(style_id), "Lite")


def normalize_project_version(version_value):
    clean = (version_value or "").strip()
    if not clean:
        return ""
    if clean.startswith("v"):
        return clean
    return f"v{clean}"


def sanitize_activity_line(line):
    clean = (line or "").strip()
    if not clean:
        return ""
    clean = re.sub(r"^\[[A-Z _-]+\]\s*-\s*", "", clean)
    clean = re.sub(r"\s+", " ", clean).strip()
    replacements = {
        "Collecting device information.": "Detecting ROM metadata",
        "ROM patch stage completed.": "ROM patch stage completed",
    }
    return replacements.get(clean, clean)[:120]


def load_state():
    if STATE_FILE.exists():
        try:
            return json.loads(STATE_FILE.read_text(encoding="utf-8"))
        except Exception:
            pass
    return {
        "message_id": "",
        "build_id": "",
        "repo_name": "",
        "rom_link": "",
        "prefix": "build",
        "builder_name": "",
        "builder_id": "",
        "status": "start",
        "activities": [],
        "last_edit_at": 0.0,
    }


def save_state(state):
    STATE_FILE.parent.mkdir(parents=True, exist_ok=True)
    STATE_FILE.write_text(json.dumps(state, indent=2, ensure_ascii=False), encoding="utf-8")
    ACTIVITY_FILE.write_text(
        json.dumps(state.get("activities", []), indent=2, ensure_ascii=False),
        encoding="utf-8",
    )


def push_activity(state, line):
    clean = sanitize_activity_line(line)
    if not clean:
        return
    activities = [item for item in state.get("activities", []) if item != clean]
    activities.append(clean)
    state["activities"] = activities[-MAX_ACTIVITY_ITEMS:]


def should_rate_limit(state, force=False):
    if force:
        return False
    return (time.time() - float(state.get("last_edit_at", 0.0))) < EDIT_INTERVAL_SECONDS


def determine_style_name():
    style_value = (
        read_file_if_exists("bin/ddevice/style_name.txt")
        or os.environ.get("DZ_STYLE_NAME", "")
        or os.environ.get("STYLE", "")
        or os.environ.get("DZ_STYLE_ID", "")
        or os.environ.get("INPUT_STYLE", "")
    )
    return style_display_name(style_value)


def detect_region_name():
    version_rom = read_file_if_exists("bin/ddevice/rom_version.txt")
    if not version_rom:
        version_rom = read_file_if_exists("bin/ddevice/base_rom_code.txt")
    upper = version_rom.upper()
    mapping = {
        "CNXM": "China",
        "MIXM": "Global",
        "EUXM": "EEA",
        "INXM": "India",
        "RUXM": "Russia",
        "IDXM": "Indonesia",
        "TRXM": "Turkey",
        "TWXM": "Taiwan",
        "JPXM": "Japan",
    }
    for suffix, label in mapping.items():
        if upper.endswith(suffix):
            return label

    fallback = read_file_if_exists("bin/ddevice/rom_region.txt")
    if not fallback:
        fallback = read_file_if_exists("bin/ddevice/device_type.txt")
    fallback_map = {
        "EEAGlobal": "EEA",
        "INGlobal": "India",
        "IDGlobal": "Indonesia",
        "RUGlobal": "Russia",
        "TRGlobal": "Turkey",
        "TWGlobal": "Taiwan",
        "JPGlobal": "Japan",
        "Global": "Global",
    }
    return fallback_map.get(fallback, fallback or "China")


def read_gdrive_link():
    for report_path in GDRIVE_REPORTS:
        if report_path.exists():
            return read_file_if_exists(report_path)
    return ""


def get_channel_id():
    return os.environ.get("TELEGRAM_CHAT_ID") or os.environ.get("TELEGRAM_CHANNEL_ID")


def send_notification(status, repo_name, rom_link, channel_id, bot_token, msg_id=None, build_id="Unknown", builder_name="", builder_id="", live_message=""):
    icon, status_title, status_desc = get_status_info(status)
    state = load_state()

    if repo_name:
        state["repo_name"] = repo_name
    if rom_link:
        state["rom_link"] = rom_link
    if builder_name:
        state["builder_name"] = builder_name
    if builder_id:
        state["builder_id"] = builder_id
    if build_id and build_id != "Unknown":
        state["build_id"] = build_id
    if status != "activity":
        state["status"] = status
    if live_message:
        push_activity(state, live_message)

    run_id = os.environ.get("GITHUB_RUN_ID", "")
    if run_id:
        action_url = f"https://github.com/{state['repo_name']}/actions/runs/{run_id}"
    else:
        action_url = f"https://github.com/{state['repo_name']}/actions"

    device_name = read_file_if_exists("bin/ddevice/device_name.txt")
    if not device_name:
        device_name = read_file_if_exists("bin/ddevice/name_devices.txt")

    codename = read_file_if_exists("bin/ddevice/device_code.txt")
    if not codename:
        codename = read_file_if_exists("bin/ddevice/device_model.txt")

    rom_os = read_file_if_exists("bin/ddevice/rom_os.txt")
    if not rom_os:
        rom_os = read_file_if_exists("bin/ddevice/brand_os.txt")
    if not rom_os:
        rom_os = read_file_if_exists("bin/ddevice/brand.txt")
    if rom_os in ["OS1", "OS2", "OS3"]:
        rom_os = "HyperOS"

    version_rom = read_file_if_exists("bin/ddevice/rom_version.txt")
    if not version_rom:
        version_rom = read_file_if_exists("bin/ddevice/base_rom_code.txt")
    if not version_rom:
        version_rom = read_file_if_exists("bin/ddevice/base_build_id.txt")

    android_ver = read_file_if_exists("bin/ddevice/androidver.txt")
    sdk_level = read_file_if_exists("bin/ddevice/sdkLevel.txt")
    region = detect_region_name()
    structure = read_file_if_exists("bin/script2flash/META-INF/Data/Structure")
    fs_type = read_file_if_exists("bin/ddevice/fstype.txt")
    version_tool = normalize_project_version(read_file_if_exists("Version"))
    output_zip = read_file_if_exists("bin/ddevice/output_zip.txt")
    gdrive_link = read_gdrive_link()
    style_name = determine_style_name()
    builder_text = state.get("builder_name") or "System"

    message_lines = [
        "⚡ *DeadZone Build Center*",
        "━━━━━━━━━━━━━━━━━━",
        f"👤 *Builder:* `{builder_text}`",
    ]

    if is_available(device_name):
        message_lines.append(f"📱 *Device:* `{device_name}`")
    if is_available(codename):
        message_lines.append(f"🔑 *Codename:* `{codename}`")

    os_parts = []
    if is_available(rom_os):
        os_parts.append(rom_os)
    if is_available(version_rom):
        os_parts.append(version_rom)
    if os_parts:
        message_lines.append(f"💿 *ROM:* `{' | '.join(os_parts)}`")

    if is_available(region):
        message_lines.append(f"🌍 *Region:* `{region}`")

    android_parts = []
    if is_available(android_ver):
        android_parts.append(f"Android {android_ver}")
    if is_available(sdk_level):
        android_parts.append(f"SDK {sdk_level}")
    if android_parts:
        message_lines.append(f"⚙️ *Platform:* `{' | '.join(android_parts)}`")

    fs_parts = []
    if is_available(fs_type):
        fs_parts.append(fs_type)
    if is_available(structure):
        fs_parts.append(structure)
    if fs_parts:
        message_lines.append(f"🗂️ *Structure / FS:* `{' | '.join(fs_parts)}`")

    if is_available(version_tool):
        message_lines.append(f"🛠️ *DeadZone Version:* `{version_tool}`")
    if is_available(style_name):
        message_lines.append(f"🎨 *Style:* `{style_name}`")

    message_lines.append("━━━━━━━━━━━━━━━━━━")
    message_lines.append(f"{icon} *Status:* `{status_title}`")
    message_lines.append(f"📝 *Details:* _{status_desc}_")
    message_lines.append(f"📈 *Progress:* `{get_progress_bar(status if status != 'activity' else state.get('status', 'build'))}`")

    if state.get("activities"):
        message_lines.append("🔴 *Live Activity:*")
        for item in state.get("activities", [])[-MAX_ACTIVITY_ITEMS:]:
            message_lines.append(f"• {item}")

    message_lines.append("")

    if state.get("status", "").lower() == "success" and output_zip:
        message_lines.append(f"☁️ *Upload:* `{output_zip}`")
        if gdrive_link:
            message_lines.append(f"🔗 *Drive:* [Google Drive]({gdrive_link})")
        message_lines.append("")

    message_lines.append(f"🆔 *Build ID:* `{state.get('build_id') or build_id}`")
    message_lines.append(f"🔗 *Link:* [Base ROM Source]({state['rom_link']})")
    message_lines.append(f"📜 *GitHub Log:* [GitHub Actions Run]({action_url})")
    message_lines.append("")
    message_lines.append("⚡ `Project DeadZone By MEZO`")

    message = "\n".join(message_lines)

    effective_msg_id = msg_id or state.get("message_id")
    if effective_msg_id:
        url = f"https://api.telegram.org/bot{bot_token}/editMessageText"
        payload = {
            "chat_id": channel_id,
            "message_id": effective_msg_id,
            "text": message,
            "parse_mode": "Markdown",
            "disable_web_page_preview": True,
        }
    else:
        url = f"https://api.telegram.org/bot{bot_token}/sendMessage"
        payload = {
            "chat_id": channel_id,
            "text": message,
            "parse_mode": "Markdown",
            "disable_web_page_preview": True,
        }

    response = requests.post(url, json=payload)
    if not response.ok:
        if "message is not modified" in response.text.lower():
            response_data = {}
        else:
            response.raise_for_status()
            response_data = {}
    else:
        response_data = response.json()

    new_msg_id = response_data.get("result", {}).get("message_id")
    if new_msg_id:
        state["message_id"] = new_msg_id
    state["last_edit_at"] = time.time()
    save_state(state)

    if not effective_msg_id and new_msg_id and "GITHUB_ENV" in os.environ:
        with open(os.environ["GITHUB_ENV"], "a", encoding="utf-8") as file_handle:
            file_handle.write(f"TELEGRAM_MSG_ID={new_msg_id}\n")
        print(f"Saved TELEGRAM_MSG_ID={new_msg_id} to GITHUB_ENV.")

    print("Notification sent or updated successfully.")

    target_builder_id = state.get("builder_id")
    if status.lower() in ["success", "fail"] and target_builder_id:
        pm_url = f"https://api.telegram.org/bot{bot_token}/sendMessage"
        if status.lower() == "success":
            pm_text = (
                f"🎉 *DeadZone build completed successfully.*\n\n"
                f"{message}\n"
                f"🔎 *Review the full build log:* [Open GitHub Actions Run]({action_url})"
            )
        else:
            pm_text = (
                f"⚠️ *DeadZone build failed.*\n\n"
                f"{message}\n"
                f"💡 *Next step:* Open the build log above to inspect the failure details."
            )

        pm_payload = {
            "chat_id": target_builder_id,
            "text": pm_text,
            "parse_mode": "Markdown",
            "disable_web_page_preview": True,
        }
        try:
            requests.post(pm_url, json=pm_payload)
            print(f"Sent a direct message to user {target_builder_id}.")
        except Exception as error:
            print(f"Direct message error: {error}")


def main():
    if len(sys.argv) < 2:
        print("Usage: python notify.py <status> [live_message] <repo_name> <rom_link> [prefix_id] [builder_name] [builder_id]")
        sys.exit(1)

    status = sys.argv[1]
    live_message = ""

    if status == "activity":
        live_message = sys.argv[2] if len(sys.argv) > 2 else ""
        repo_name = sys.argv[3] if len(sys.argv) > 3 else os.environ.get("DZ_NOTIFY_REPO_NAME", "")
        rom_link = sys.argv[4] if len(sys.argv) > 4 else os.environ.get("DZ_NOTIFY_ROM_LINK", "")
        prefix = sys.argv[5] if len(sys.argv) > 5 else os.environ.get("DZ_NOTIFY_PREFIX", "build")
        builder_name = sys.argv[6] if len(sys.argv) > 6 else os.environ.get("DZ_NOTIFY_BUILDER_NAME", "")
        builder_id = sys.argv[7] if len(sys.argv) > 7 else os.environ.get("DZ_NOTIFY_BUILDER_ID", "")
    else:
        if len(sys.argv) < 4:
            print("Usage: python notify.py <status> <repo_name> <rom_link> [prefix_id] [builder_name] [builder_id]")
            sys.exit(1)
        repo_name = sys.argv[2]
        rom_link = sys.argv[3]
        prefix = sys.argv[4] if len(sys.argv) > 4 else "build"
        builder_name = sys.argv[5] if len(sys.argv) > 5 else ""
        builder_id = sys.argv[6] if len(sys.argv) > 6 else ""

    bot_token = os.environ.get("TELEGRAM_BOT_TOKEN")
    channel_id = get_channel_id()
    msg_id = os.environ.get("TELEGRAM_MSG_ID")
    build_id = os.environ.get("TELEGRAM_BUILD_ID")

    if not build_id:
        random_digits = "".join(random.choices(string.digits, k=8))
        build_id = f"{prefix}_{random_digits}"
        if "GITHUB_ENV" in os.environ:
            with open(os.environ["GITHUB_ENV"], "a", encoding="utf-8") as file_handle:
                file_handle.write(f"TELEGRAM_BUILD_ID={build_id}\n")

    if not bot_token or not channel_id:
        print("Error: TELEGRAM_BOT_TOKEN or TELEGRAM chat target is missing from the environment.")
        sys.exit(1)

    state = load_state()
    if status == "activity":
        push_activity(state, live_message)
        save_state(state)
        force = any(keyword in live_message.lower() for keyword in ("error", "warning", "failed"))
        if should_rate_limit(state, force=force):
            sys.exit(0)

    try:
        send_notification(status, repo_name, rom_link, channel_id, bot_token, msg_id, build_id, builder_name, builder_id, live_message=live_message)
    except Exception as error:
        print(f"Notification error: {error}")
        sys.exit(1)


if __name__ == "__main__":
    main()
