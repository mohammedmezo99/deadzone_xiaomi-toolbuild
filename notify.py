import html
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


STATE_FILE = Path("output/reports/live_state.json")
MESSAGE_ID_FILE = Path("output/reports/live_message_id.txt")
LEGACY_STATE_FILE = Path("bin/output/reports/notify_state.json")
ACTIVITY_FILE = Path("bin/output/reports/live_activity.json")
GDRIVE_REPORTS = [
    Path("output/reports/gdrive_url.txt"),
    Path("bin/output/reports/gdrive_url.txt"),
]

TELEGRAM_TEXT_LIMIT = 3900
EDIT_INTERVAL_SECONDS = 4.0
MAX_ACTIVITY_ITEMS = 7

PIPELINE_STAGES = [
    ("setup_checkout", "Setup & Checkout"),
    ("extract_unpack", "Extract / Unpack"),
    ("mods_patches", "Mods & Patches"),
    ("rebuild_partitions", "Rebuild Partitions"),
    ("build_super_image", "Build Super Image"),
    ("vbmeta", "vbmeta"),
    ("create_final_zip", "Create Final ZIP"),
    ("google_drive_upload", "Google Drive Upload"),
    ("pixeldrain_fallback", "PixelDrain Fallback"),
]
PIPELINE_IDS = [stage_id for stage_id, _ in PIPELINE_STAGES]
PIPELINE_LABELS = {stage_id: label for stage_id, label in PIPELINE_STAGES}

STATUS_ICONS = {
    "pending": "⚪",
    "running": "🟡",
    "success": "✅",
    "failed": "❌",
    "skipped": "⏭️",
}

TOP_LEVEL_STAGE_MAP = {
    "start": "setup_checkout",
    "download": "setup_checkout",
    "unpack": "extract_unpack",
    "build": "mods_patches",
    "pack": "rebuild_partitions",
    "upload": "google_drive_upload",
}


class TelegramRequestError(Exception):
    def __init__(self, status_code, response_text):
        self.status_code = int(status_code or 0)
        self.response_text = response_text or ""
        super().__init__(f"{self.status_code} {self.response_text[:200]}")


def read_file_if_exists(path, default=""):
    file_path = Path(path)
    if file_path.exists():
        try:
            value = file_path.read_text(encoding="utf-8", errors="replace").strip()
            return value if value else default
        except Exception:
            return default
    return default


def normalize_project_version(version_value):
    clean = (version_value or "").strip()
    if not clean:
        return ""
    if clean.startswith("v"):
        return clean
    return f"v{clean}"


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
    # Private build notifications only. Public group messages are handled by MEZO/Bot/public_lite_bot.py.
    return (
        os.environ.get("MEZO_PRIVATE_CHAT_ID")
        or os.environ.get("TELEGRAM_CHAT_ID")
        or os.environ.get("TELEGRAM_CHANNEL_ID")
    )


def warn_telegram(message):
    print(f"⚠️ Telegram notification warning: {message}")


def has_valid_message_id(value):
    if value is None:
        return False
    try:
        int(str(value).strip())
        return True
    except (TypeError, ValueError):
        return False


def sanitize_telegram_text(text):
    clean = (text or "").replace("\r\n", "\n").replace("\r", "\n")
    clean = clean.replace("\x00", "")
    return clean.strip()


def truncate_telegram_text(text, limit=TELEGRAM_TEXT_LIMIT):
    clean = sanitize_telegram_text(text)
    if len(clean) <= limit:
        return clean
    return clean[: limit - 3].rstrip() + "..."


def build_message_text(message_lines):
    return truncate_telegram_text("\n".join(message_lines))


def sanitize_activity_line(line):
    clean = sanitize_telegram_text(line)
    if not clean:
        return ""
    clean = re.sub(r"^\[[A-Z _/-]+\]\s*-\s*", "", clean)
    clean = re.sub(r"\s+", " ", clean).strip()
    return clean[:160]


def empty_pipeline():
    return {stage_id: "pending" for stage_id in PIPELINE_IDS}


def default_state():
    return {
        "message_id": "",
        "build_id": "",
        "repo_name": "",
        "rom_link": "",
        "prefix": "build",
        "builder_name": "",
        "builder_id": "",
        "status": "start",
        "current_stage": "setup_checkout",
        "pipeline": empty_pipeline(),
        "activities": [],
        "started_at": time.time(),
        "last_edit_at": 0.0,
        "error_detail": "",
    }


def load_state():
    candidates = [STATE_FILE, LEGACY_STATE_FILE]
    for candidate in candidates:
        if candidate.exists():
            try:
                loaded = json.loads(candidate.read_text(encoding="utf-8"))
                state = default_state()
                state.update(loaded if isinstance(loaded, dict) else {})
                pipeline = state.get("pipeline", {})
                merged_pipeline = empty_pipeline()
                if isinstance(pipeline, dict):
                    for stage_id in PIPELINE_IDS:
                        value = str(pipeline.get(stage_id, "pending")).lower()
                        if value in {"pending", "running", "success", "failed", "skipped"}:
                            merged_pipeline[stage_id] = value
                state["pipeline"] = merged_pipeline
                if not has_valid_message_id(state.get("message_id")):
                    file_msg_id = read_file_if_exists(MESSAGE_ID_FILE)
                    if has_valid_message_id(file_msg_id):
                        state["message_id"] = str(file_msg_id).strip()
                return state
            except Exception:
                pass
    state = default_state()
    file_msg_id = read_file_if_exists(MESSAGE_ID_FILE)
    if has_valid_message_id(file_msg_id):
        state["message_id"] = str(file_msg_id).strip()
    return state


def save_state(state):
    payload = dict(state)
    payload["message_id"] = str(payload.get("message_id", "") or "")
    STATE_FILE.parent.mkdir(parents=True, exist_ok=True)
    STATE_FILE.write_text(json.dumps(payload, indent=2, ensure_ascii=False), encoding="utf-8")
    LEGACY_STATE_FILE.parent.mkdir(parents=True, exist_ok=True)
    LEGACY_STATE_FILE.write_text(json.dumps(payload, indent=2, ensure_ascii=False), encoding="utf-8")
    ACTIVITY_FILE.parent.mkdir(parents=True, exist_ok=True)
    ACTIVITY_FILE.write_text(
        json.dumps(payload.get("activities", []), indent=2, ensure_ascii=False),
        encoding="utf-8",
    )
    if has_valid_message_id(payload.get("message_id")):
        MESSAGE_ID_FILE.parent.mkdir(parents=True, exist_ok=True)
        MESSAGE_ID_FILE.write_text(str(payload["message_id"]).strip(), encoding="utf-8")


def push_activity(state, line):
    clean = sanitize_activity_line(line)
    if not clean:
        return
    activities = [item for item in state.get("activities", []) if item != clean]
    activities.append(clean)
    state["activities"] = activities[-MAX_ACTIVITY_ITEMS:]
    lowered = clean.lower()
    if any(token in lowered for token in ("error:", "failed", "[error]", " failure", "unable to ", " not found")):
        state["error_detail"] = clean


def should_rate_limit(state, force=False):
    if force:
        return False
    return (time.time() - float(state.get("last_edit_at", 0.0))) < EDIT_INTERVAL_SECONDS


def stage_index(stage_id):
    try:
        return PIPELINE_IDS.index(stage_id)
    except ValueError:
        return -1


def mark_stage(state, stage_id, new_status):
    if stage_id in state["pipeline"]:
        state["pipeline"][stage_id] = new_status


def mark_stages_before(state, stage_id, new_status="success"):
    stop_index = stage_index(stage_id)
    if stop_index < 0:
        return
    for existing_stage in PIPELINE_IDS[:stop_index]:
        if state["pipeline"].get(existing_stage) in {"pending", "running"}:
            state["pipeline"][existing_stage] = new_status


def set_running_stage(state, stage_id):
    if stage_id not in state["pipeline"]:
        return
    mark_stages_before(state, stage_id, "success")
    current_index = stage_index(stage_id)
    for later_stage in PIPELINE_IDS[current_index + 1 :]:
        if state["pipeline"].get(later_stage) == "running":
            state["pipeline"][later_stage] = "pending"
    if state["pipeline"].get(stage_id) not in {"success", "failed", "skipped"}:
        state["pipeline"][stage_id] = "running"
    state["current_stage"] = stage_id


def update_pipeline_for_status(state, status):
    normalized = (status or "").lower()
    if normalized in TOP_LEVEL_STAGE_MAP:
        set_running_stage(state, TOP_LEVEL_STAGE_MAP[normalized])
        return

    if normalized == "success":
        for stage_id in PIPELINE_IDS:
            if stage_id == "pixeldrain_fallback" and state["pipeline"].get(stage_id) == "pending":
                state["pipeline"][stage_id] = "skipped"
                continue
            if state["pipeline"].get(stage_id) in {"pending", "running"}:
                state["pipeline"][stage_id] = "success"
        state["current_stage"] = "google_drive_upload"
        return

    if normalized == "fail":
        current_stage = state.get("current_stage") or "mods_patches"
        if current_stage not in state["pipeline"]:
            current_stage = "mods_patches"
        if state["pipeline"].get(current_stage) in {"pending", "running"}:
            state["pipeline"][current_stage] = "failed"
        return


def infer_stage_from_activity(line):
    lowered = (line or "").lower()
    patterns = [
        ("pixeldrain_fallback", ("pixeldrain",)),
        ("google_drive_upload", ("google drive", "gdrive", "rclone link", "uploading to google drive", "upload completed")),
        ("create_final_zip", ("final zip", ".zip", "extracting template", "building: deadzone_")),
        ("vbmeta", ("vbmeta",)),
        ("build_super_image", ("packing super.img", "super.img packed", "successfully packed super.img", "compressing super.img")),
        ("rebuild_partitions", ("rebuilding", "[repack]", "super image size:", "packing super.img for ")),
        ("mods_patches", ("applying mods", "[mods]", "[patch]", "patching ", "updatefile mod", "rom patch stage completed", "collecting device information", "style routing")),
        ("extract_unpack", ("extracting", "payload.bin", "split super.img", "unpacking the base rom", "unpacking", "merging super.img")),
    ]
    for stage_id, tokens in patterns:
        if any(token in lowered for token in tokens):
            return stage_id
    return ""


def update_pipeline_for_activity(state, line):
    stage_id = infer_stage_from_activity(line)
    if not stage_id:
        return

    if stage_id == "build_super_image":
        if state["pipeline"].get("rebuild_partitions") in {"pending", "running"}:
            state["pipeline"]["rebuild_partitions"] = "success"
    elif stage_id == "vbmeta":
        for prior in ("rebuild_partitions", "build_super_image"):
            if state["pipeline"].get(prior) in {"pending", "running"}:
                state["pipeline"][prior] = "success"
    elif stage_id == "create_final_zip":
        for prior in ("rebuild_partitions", "build_super_image", "vbmeta"):
            if state["pipeline"].get(prior) in {"pending", "running"}:
                state["pipeline"][prior] = "success"
    elif stage_id == "google_drive_upload":
        for prior in ("rebuild_partitions", "build_super_image", "vbmeta", "create_final_zip"):
            if state["pipeline"].get(prior) in {"pending", "running"}:
                state["pipeline"][prior] = "success"
    elif stage_id == "pixeldrain_fallback":
        if state["pipeline"].get("google_drive_upload") == "pending":
            state["pipeline"]["google_drive_upload"] = "skipped"

    set_running_stage(state, stage_id)

    lowered = (line or "").lower()
    if "google drive link:" in lowered:
        state["pipeline"]["google_drive_upload"] = "success"
        state["current_stage"] = "google_drive_upload"
        if state["pipeline"].get("pixeldrain_fallback") == "pending":
            state["pipeline"]["pixeldrain_fallback"] = "skipped"
    if "successfully packed super.img" in lowered:
        state["pipeline"]["build_super_image"] = "success"
        if state["pipeline"].get("vbmeta") == "pending":
            state["pipeline"]["vbmeta"] = "running"
            state["current_stage"] = "vbmeta"
    if ".zip" in lowered and ("building: deadzone_" in lowered or "final zip" in lowered):
        state["pipeline"]["create_final_zip"] = "success"
        state["current_stage"] = "create_final_zip"


def render_pipeline_lines(state):
    lines = []
    for stage_id, label in PIPELINE_STAGES:
        stage_status = state["pipeline"].get(stage_id, "pending")
        lines.append(f"{STATUS_ICONS[stage_status]} {label}")
    return lines


def calculate_progress_percent(state):
    completed_units = 0.0
    for stage_id in PIPELINE_IDS:
        stage_status = state["pipeline"].get(stage_id, "pending")
        if stage_status in {"success", "skipped"}:
            completed_units += 1.0
        elif stage_status == "running" and state.get("status") not in {"success", "fail"}:
            completed_units += 0.5
    percent = int(round((completed_units / float(len(PIPELINE_IDS))) * 100.0))
    if state.get("status") == "success":
        percent = 100
    return max(0, min(100, percent))


def build_progress_bar(percent):
    filled = max(0, min(10, int(round(percent / 10.0))))
    bar = ("█" * filled) + ("░" * (10 - filled))
    return f"{bar} {percent}%"


def format_duration(started_at):
    total_seconds = int(max(0, time.time() - float(started_at or time.time())))
    hours, rem = divmod(total_seconds, 3600)
    minutes, seconds = divmod(rem, 60)
    if hours:
        return f"{hours:02d}:{minutes:02d}:{seconds:02d}"
    return f"{minutes:02d}:{seconds:02d}"


def get_status_label(state):
    status = str(state.get("status", "start")).lower()
    if status == "success":
        return "✅ SUCCESS"
    if status == "fail":
        return "❌ FAILED"
    failed_present = any(state["pipeline"].get(stage_id) == "failed" for stage_id in PIPELINE_IDS)
    if failed_present:
        return "❌ FAILED"
    return "🟡 RUNNING"


def collect_header_metadata(state):
    device_name = read_file_if_exists("bin/ddevice/device_name.txt")
    if not device_name:
        device_name = read_file_if_exists("bin/ddevice/name_devices.txt")

    codename = read_file_if_exists("bin/ddevice/device_code.txt")
    if not codename:
        codename = read_file_if_exists("bin/ddevice/device_model.txt")
    if codename:
        codename = codename.upper()

    rom_os = read_file_if_exists("bin/ddevice/rom_os.txt")
    if not rom_os:
        rom_os = read_file_if_exists("bin/ddevice/brand_os.txt")
    if not rom_os:
        rom_os = read_file_if_exists("bin/ddevice/brand.txt")
    if rom_os in {"OS1", "OS2", "OS3"}:
        rom_os = "HyperOS"

    version_rom = read_file_if_exists("bin/ddevice/rom_version.txt")
    if not version_rom:
        version_rom = read_file_if_exists("bin/ddevice/base_rom_code.txt")
    if not version_rom:
        version_rom = read_file_if_exists("bin/ddevice/base_build_id.txt")

    android_ver = read_file_if_exists("bin/ddevice/androidver.txt") or "Unknown"
    sdk_level = read_file_if_exists("bin/ddevice/sdkLevel.txt") or "Unknown"
    structure = read_file_if_exists("bin/script2flash/META-INF/Data/Structure") or "Unknown"
    fs_type = read_file_if_exists("bin/ddevice/fstype.txt") or "Unknown"
    version_tool = normalize_project_version(read_file_if_exists("Version")) or "Unknown"
    style_name = determine_style_name()
    region = detect_region_name()
    builder_text = state.get("builder_name") or "MEZO"

    return {
        "builder": builder_text,
        "device": device_name or "Unknown",
        "codename": codename or "Unknown",
        "rom_family": rom_os or "Unknown",
        "rom_version": version_rom or "Unknown",
        "region": region or "Unknown",
        "android": android_ver,
        "sdk": sdk_level,
        "fs": fs_type,
        "structure": structure,
        "version": version_tool,
        "style": style_name or "Lite",
    }


def build_notification_message(state):
    metadata = collect_header_metadata(state)
    output_zip = read_file_if_exists("bin/ddevice/output_zip.txt")
    gdrive_link = read_gdrive_link()
    run_id = os.environ.get("GITHUB_RUN_ID", "")
    repo_name = state.get("repo_name", "")
    if run_id and repo_name:
        action_url = f"https://github.com/{repo_name}/actions/runs/{run_id}"
    elif repo_name:
        action_url = f"https://github.com/{repo_name}/actions"
    else:
        action_url = ""

    status_label = get_status_label(state)
    progress_percent = calculate_progress_percent(state)
    progress_bar = build_progress_bar(progress_percent)
    total_time = format_duration(state.get("started_at", time.time()))

    lines = [
        "⚡️ DeadZone Build Center",
        "━━━━━━━━━━━━━━━━━━",
        f" Builder: {metadata['builder']}",
        f" Device: {metadata['device']}",
        f" Codename: {metadata['codename']}",
        f" ROM: {metadata['rom_family']} | {metadata['rom_version']}",
        f" Region: {metadata['region']}",
        f"⚙️ Platform: Android {metadata['android']} | SDK {metadata['sdk']}",
        f" Structure / FS: {metadata['fs']} | {metadata['structure']}",
        f" DeadZone Version: {metadata['version']}",
        f" Style: {metadata['style']}",
        "━━━━━━━━━━━━━━━━━━",
        f" Status: {status_label}",
        f"⏱️ Total Time: {total_time}",
        f" Progress: {progress_bar}",
        "",
        "Pipeline:",
    ]
    lines.extend(render_pipeline_lines(state))

    activities = state.get("activities", [])
    if activities:
        lines.append("")
        lines.append("Live Activity:")
        for item in activities[-MAX_ACTIVITY_ITEMS:]:
            lines.append(f"• {item}")

    if state.get("status") == "fail" and state.get("error_detail"):
        lines.append("")
        lines.append(f"Error: {state['error_detail']}")

    if output_zip or gdrive_link or action_url or state.get("rom_link") or state.get("build_id"):
        lines.append("")
    if output_zip:
        lines.append(f"☁️ Upload: {output_zip}")
    if gdrive_link:
        lines.append(f" Link: {gdrive_link}")
    if action_url:
        lines.append(f" GitHub Log: {action_url}")
    if state.get("rom_link"):
        lines.append(f" Base ROM: {state['rom_link']}")
    if state.get("build_id"):
        lines.append(f" Build ID: {state['build_id']}")

    lines.append("")
    lines.append("⚡️ Project DeadZone By MEZO")
    return build_message_text(lines)


def post_telegram(bot_token, method, payload):
    url = f"https://api.telegram.org/bot{bot_token}/{method}"
    response = requests.post(url, json=payload, timeout=30)
    if response.ok:
        try:
            return response.json()
        except Exception:
            return {}
    body = response.text or ""
    if method == "editMessageText" and "message is not modified" in body.lower():
        return {}
    raise TelegramRequestError(response.status_code, body)


def build_rich_payload(channel_id, text, message_id=None):
    payload = {
        "chat_id": channel_id,
        "text": html.escape(truncate_telegram_text(text)),
        "parse_mode": "HTML",
        "disable_web_page_preview": True,
    }
    if message_id is not None:
        payload["message_id"] = int(str(message_id).strip())
    return payload


def build_plain_payload(channel_id, text, message_id=None):
    payload = {
        "chat_id": channel_id,
        "text": truncate_telegram_text(text),
        "disable_web_page_preview": True,
    }
    if message_id is not None:
        payload["message_id"] = int(str(message_id).strip())
    return payload


def send_telegram_with_fallback(bot_token, channel_id, text):
    try:
        return post_telegram(bot_token, "sendMessage", build_rich_payload(channel_id, text))
    except TelegramRequestError as error:
        if error.status_code == 400:
            warn_telegram("rich send failed; retrying as plain text.")
        try:
            return post_telegram(bot_token, "sendMessage", build_plain_payload(channel_id, text))
        except TelegramRequestError:
            warn_telegram("plain send failed; continuing build.")
            return {}


def edit_telegram_with_fallback(bot_token, channel_id, message_id, text):
    try:
        return post_telegram(bot_token, "editMessageText", build_rich_payload(channel_id, text, message_id=message_id))
    except TelegramRequestError as error:
        if error.status_code == 400:
            try:
                return post_telegram(bot_token, "editMessageText", build_plain_payload(channel_id, text, message_id=message_id))
            except TelegramRequestError:
                return None
        return None


def save_message_id(state, message_id):
    if has_valid_message_id(message_id):
        normalized = str(message_id).strip()
        state["message_id"] = normalized
        MESSAGE_ID_FILE.parent.mkdir(parents=True, exist_ok=True)
        MESSAGE_ID_FILE.write_text(normalized, encoding="utf-8")
        if "GITHUB_ENV" in os.environ:
            with open(os.environ["GITHUB_ENV"], "a", encoding="utf-8") as file_handle:
                file_handle.write(f"TELEGRAM_MSG_ID={normalized}\n")


def update_state_from_inputs(state, status, repo_name, rom_link, prefix, builder_name, builder_id, live_message):
    if repo_name:
        state["repo_name"] = repo_name
    if rom_link:
        state["rom_link"] = rom_link
    if prefix:
        state["prefix"] = prefix
    if builder_name:
        state["builder_name"] = builder_name
    if builder_id:
        state["builder_id"] = builder_id
    if status != "activity":
        state["status"] = status
        update_pipeline_for_status(state, status)
    if live_message:
        push_activity(state, live_message)
        update_pipeline_for_activity(state, live_message)


def send_notification(status, repo_name, rom_link, channel_id, bot_token, msg_id=None, build_id="Unknown", prefix="build", builder_name="", builder_id="", live_message=""):
    state = load_state()
    if build_id and build_id != "Unknown":
        state["build_id"] = build_id
    update_state_from_inputs(state, status, repo_name, rom_link, prefix, builder_name, builder_id, live_message)

    if status == "success":
        state["pipeline"]["google_drive_upload"] = "success"
        if state["pipeline"].get("pixeldrain_fallback") == "pending":
            state["pipeline"]["pixeldrain_fallback"] = "skipped"
    elif status == "upload":
        for stage_id in ("rebuild_partitions", "build_super_image", "vbmeta", "create_final_zip"):
            if state["pipeline"].get(stage_id) in {"pending", "running"}:
                state["pipeline"][stage_id] = "success"
        state["pipeline"]["google_drive_upload"] = "running"
        state["current_stage"] = "google_drive_upload"
    elif status == "pack":
        if state["pipeline"].get("mods_patches") in {"pending", "running"}:
            state["pipeline"]["mods_patches"] = "success"
        if state["pipeline"].get("rebuild_partitions") == "pending":
            state["pipeline"]["rebuild_partitions"] = "running"
            state["current_stage"] = "rebuild_partitions"
    elif status == "fail":
        current_stage = state.get("current_stage") or "mods_patches"
        if state["pipeline"].get(current_stage) in {"pending", "running"}:
            state["pipeline"][current_stage] = "failed"

    message_text = build_notification_message(state)
    effective_msg_id = msg_id or state.get("message_id") or read_file_if_exists(MESSAGE_ID_FILE)

    if channel_id and has_valid_message_id(effective_msg_id):
        result = edit_telegram_with_fallback(bot_token, channel_id, effective_msg_id, message_text)
        if result is not None:
            state["last_edit_at"] = time.time()
            save_message_id(state, effective_msg_id)
            save_state(state)
            print("✅ Telegram live message updated")
            return
        warn_telegram("edit failed; sending replacement live message")

    response_data = send_telegram_with_fallback(bot_token, channel_id, message_text)
    if not response_data:
        state["last_edit_at"] = time.time()
        save_state(state)
        warn_telegram("send failed; continuing build")
        return

    new_msg_id = response_data.get("result", {}).get("message_id")
    if new_msg_id:
        save_message_id(state, new_msg_id)
        print("✅ Telegram replacement live message sent and saved" if has_valid_message_id(effective_msg_id) else "✅ Telegram live message updated")
    state["last_edit_at"] = time.time()
    save_state(state)


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
    msg_id = os.environ.get("TELEGRAM_MSG_ID") or read_file_if_exists(MESSAGE_ID_FILE)
    build_id = os.environ.get("TELEGRAM_BUILD_ID")

    if not build_id:
        random_digits = "".join(random.choices(string.digits, k=8))
        build_id = f"{prefix}_{random_digits}"
        if "GITHUB_ENV" in os.environ:
            with open(os.environ["GITHUB_ENV"], "a", encoding="utf-8") as file_handle:
                file_handle.write(f"TELEGRAM_BUILD_ID={build_id}\n")

    if not bot_token:
        warn_telegram("TELEGRAM_BOT_TOKEN is missing from the environment.")
        sys.exit(0)
    if not channel_id:
        warn_telegram("TELEGRAM_CHAT_ID and TELEGRAM_CHANNEL_ID are missing from the environment.")
        sys.exit(0)

    state = load_state()
    if status == "activity":
        update_state_from_inputs(state, status, repo_name, rom_link, prefix, builder_name, builder_id, live_message)
        save_state(state)
        force = any(keyword in live_message.lower() for keyword in ("error", "warning", "failed"))
        if should_rate_limit(state, force=force):
            sys.exit(0)

    try:
        send_notification(
            status=status,
            repo_name=repo_name,
            rom_link=rom_link,
            channel_id=channel_id,
            bot_token=bot_token,
            msg_id=msg_id,
            build_id=build_id,
            prefix=prefix,
            builder_name=builder_name,
            builder_id=builder_id,
            live_message=live_message,
        )
    except Exception as error:
        warn_telegram(f"request failed. ({error})")
        sys.exit(0)


if __name__ == "__main__":
    main()
