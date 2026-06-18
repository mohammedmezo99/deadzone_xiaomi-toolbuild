import os
import random
import string
import sys

import requests


# Keep stdout and stderr in UTF-8 so Windows terminals can print status text safely.
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


def read_file_if_exists(path, default=""):
    if os.path.exists(path):
        try:
            with open(path, "r", encoding="utf-8") as file_handle:
                value = file_handle.read().strip()
                return value if value else default
        except Exception:
            return default
    return default


def get_status_info(status):
    status = status.lower()
    if status == "start":
        return "🚀", "ENVIRONMENT INITIALIZATION", "Preparing the ROM build environment..."
    if status == "download":
        return "📥", "DOWNLOADING BASE ROM", "Downloading the base ROM package..."
    if status == "unpack":
        return "🔓", "UNPACKING PARTITIONS", "Extracting payload.bin or new.dat.br files..."
    if status == "build":
        return "🛠️", "BUILDING AND PATCHING ROM", "Applying build and system patch steps..."
    if status == "pack":
        return "📦", "PACKAGING ROM ZIP", "Packaging partitions into a flashable archive..."
    if status == "upload":
        return "📤", "UPLOADING BUILD", "Uploading the final ROM package..."
    if status == "success":
        return "✅", "BUILD COMPLETED", "The ROM build finished successfully."
    if status == "fail":
        return "❌", "BUILD FAILED", "The ROM build stopped because of an error."
    return "ℹ️", "STATUS UPDATE", status.upper()


def get_progress_bar(status):
    stages = ["start", "download", "unpack", "build", "pack", "upload", "success"]
    status = status.lower()
    current_index = stages.index(status) if status in stages else -1

    timeline = []
    for index, _stage in enumerate(stages):
        if status == "fail" and index == 6:
            timeline.append("❌")
        elif index < current_index:
            timeline.append("🟢")
        elif index == current_index:
            timeline.append("✅" if status == "success" else "🔵")
        else:
            timeline.append("⚪")
    return " ➔ ".join(timeline)


def is_available(value):
    if not value:
        return False
    return value.strip().lower() not in {"", "unknown", "detecting...", "scanning..."}


def send_notification(status, repo_name, rom_link, channel_id, bot_token, msg_id=None, build_id="Unknown", builder_name="", builder_id=""):
    icon, status_title, status_desc = get_status_info(status)

    run_id = os.environ.get("GITHUB_RUN_ID", "")
    if run_id:
        action_url = f"https://github.com/{repo_name}/actions/runs/{run_id}"
    else:
        action_url = f"https://github.com/{repo_name}/actions"

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

    region = read_file_if_exists("bin/ddevice/rom_region.txt")
    if not region:
        region = read_file_if_exists("bin/ddevice/device_type.txt")

    structure = read_file_if_exists("bin/script2flash/META-INF/Data/Structure")
    fs_type = read_file_if_exists("bin/ddevice/fstype.txt")
    version_tool = read_file_if_exists("Version")
    output_zip = read_file_if_exists("bin/ddevice/output_zip.txt")

    builder_text = builder_name if builder_name else "System"

    message_lines = [
        "🚀 *DeadZone Build Progress*",
        "━━━━━━━━━━━━━━━━━━",
        f"👤 *Builder:* {builder_text}",
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
        message_lines.append(f"💿 *Operating system:* `{' | '.join(os_parts)}`")

    if is_available(region):
        message_lines.append(f"🌐 *Region:* `{region}`")

    android_parts = []
    if is_available(android_ver):
        android_parts.append(f"Android {android_ver}")
    if is_available(sdk_level):
        android_parts.append(f"SDK {sdk_level}")
    if android_parts:
        message_lines.append(f"🤖 *Android:* `{' | '.join(android_parts)}`")

    fs_parts = []
    if is_available(fs_type):
        fs_parts.append(fs_type)
    if is_available(structure):
        fs_parts.append(structure)
    if fs_parts:
        message_lines.append(f"🗄️ *Structure / FS:* `{' | '.join(fs_parts)}`")

    if is_available(version_tool):
        message_lines.append(f"🛠️ *Tool version:* `{version_tool}`")

    message_lines.append("━━━━━━━━━━━━━━━━━━")
    message_lines.append(f"📊 *Status:* {icon} *{status_title}*")
    message_lines.append(f"📝 *Details:* _{status_desc}_")
    message_lines.append(f"📈 *Progress:* `{get_progress_bar(status)}`")
    message_lines.append("")

    if status.lower() == "success" and output_zip:
        message_lines.append(f"📦 *Output zip:* `{output_zip}`")
        message_lines.append("")

    message_lines.append(f"🆔 *Build ID:* `{build_id}`")
    message_lines.append(f"🚀 *Build log:* [View here]({action_url})")
    message_lines.append(f"🔗 *Base ROM source:* [Open link]({rom_link})")
    message_lines.append("")
    message_lines.append("`Project DeadZone By MEZO`")

    message = "\n".join(message_lines)

    if msg_id:
        url = f"https://api.telegram.org/bot{bot_token}/editMessageText"
        payload = {
            "chat_id": channel_id,
            "message_id": msg_id,
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

    try:
        response = requests.post(url, json=payload)
        response.raise_for_status()
        response_data = response.json()

        new_msg_id = response_data.get("result", {}).get("message_id")
        if not msg_id and new_msg_id and "GITHUB_ENV" in os.environ:
            with open(os.environ["GITHUB_ENV"], "a", encoding="utf-8") as file_handle:
                file_handle.write(f"TELEGRAM_MSG_ID={new_msg_id}\n")
            print(f"Saved TELEGRAM_MSG_ID={new_msg_id} to GITHUB_ENV.")

        print("Notification sent or updated successfully.")
        if status.lower() in ["success", "fail"] and builder_id:
            pm_url = f"https://api.telegram.org/bot{bot_token}/sendMessage"
            if status.lower() == "success":
                pm_text = (
                    f"🎉 *ROM build completed successfully.*\n\n"
                    f"{message}\n"
                    f"🔎 *Build details:* [Open build log]({action_url})"
                )
            else:
                pm_text = (
                    f"⚠️ *ROM build failed.*\n\n"
                    f"{message}\n"
                    f"💡 *Suggestion:* Open the build log above for the failure details."
                )

            pm_payload = {
                "chat_id": builder_id,
                "text": pm_text,
                "parse_mode": "Markdown",
                "disable_web_page_preview": True,
            }
            try:
                requests.post(pm_url, json=pm_payload)
                print(f"Sent a direct message to user {builder_id}.")
            except Exception as error:
                print(f"Direct message error: {error}")

    except Exception as error:
        print(f"Notification error: {error}")
        if "response" in locals():
            print(response.text)


if __name__ == "__main__":
    if len(sys.argv) < 4:
        print("Usage: python notify.py <status> <repo_name> <rom_link> [prefix_id] [builder_name] [builder_id]")
        sys.exit(1)

    status = sys.argv[1]
    repo_name = sys.argv[2]
    rom_link = sys.argv[3]
    prefix = sys.argv[4] if len(sys.argv) > 4 else "build"
    builder_name = sys.argv[5] if len(sys.argv) > 5 else ""
    builder_id = sys.argv[6] if len(sys.argv) > 6 else ""

    bot_token = os.environ.get("TELEGRAM_BOT_TOKEN")
    channel_id = os.environ.get("TELEGRAM_CHANNEL_ID")
    msg_id = os.environ.get("TELEGRAM_MSG_ID")
    build_id = os.environ.get("TELEGRAM_BUILD_ID")

    if not build_id:
        random_digits = "".join(random.choices(string.digits, k=8))
        build_id = f"{prefix}_{random_digits}"
        if "GITHUB_ENV" in os.environ:
            with open(os.environ["GITHUB_ENV"], "a", encoding="utf-8") as file_handle:
                file_handle.write(f"TELEGRAM_BUILD_ID={build_id}\n")

    if not bot_token or not channel_id:
        print("Error: TELEGRAM_BOT_TOKEN or TELEGRAM_CHANNEL_ID is missing from the environment.")
        sys.exit(1)

    send_notification(status, repo_name, rom_link, channel_id, bot_token, msg_id, build_id, builder_name, builder_id)
