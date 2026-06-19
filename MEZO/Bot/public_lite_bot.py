import json
import os
import re
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


OFFSET_FILE = Path("output/reports/public_bot_offset.txt")
COOLDOWN_FILE = Path("output/reports/public_bot_cooldowns.json")
COOLDOWN_SECONDS = 600
PUBLIC_WORKFLOW = "MEZO_Lite_bot.yml"
PUBLIC_STYLE = "Lite"
MEZO_CONTACT_URL = "https://t.me/MohamedMezo1"

ACK_HTML = """⚡️ DeadZone Lite Build Request

✅ Your request has been received.
DeadZone Lite build will be started.
⏳ Please wait around 40–60 minutes.
The result will be sent when the build is completed.

━━━━━━━━━━━━━━━━━━
Want DeadZone Paid ROMs?

DeadZone GamingPlus
DeadZone Legend
DeadZone Ninja

Contact <a href="https://t.me/MohamedMezo1">MEZO</a>:
https://t.me/MohamedMezo1

━━━━━━━━━━━━━━━━━━
⚡️ Project DeadZone By MEZO — Enjoy!"""

ACK_PLAIN = """⚡️ DeadZone Lite Build Request

✅ Your request has been received.
DeadZone Lite build will be started.
⏳ Please wait around 40–60 minutes.
The result will be sent when the build is completed.

━━━━━━━━━━━━━━━━━━
Want DeadZone Paid ROMs?

DeadZone GamingPlus
DeadZone Legend
DeadZone Ninja

Contact MEZO:
https://t.me/MohamedMezo1

━━━━━━━━━━━━━━━━━━
⚡️ Project DeadZone By MEZO — Enjoy!"""

BLOCKED_HTML = """Public builds support DeadZone Lite only.

Paid ROMs are available through <a href="https://t.me/MohamedMezo1">MEZO</a>:

DeadZone GamingPlus
DeadZone Legend
DeadZone Ninja

Contact MEZO:
https://t.me/MohamedMezo1

⚡️ Project DeadZone By MEZO"""

BLOCKED_PLAIN = """Public builds support DeadZone Lite only.

Paid ROMs are available through MEZO:

DeadZone GamingPlus
DeadZone Legend
DeadZone Ninja

Contact MEZO:
https://t.me/MohamedMezo1

⚡️ Project DeadZone By MEZO"""

USAGE_PLAIN = "Usage: /mezo <ROM_URL>"
INVALID_URL_PLAIN = "Please send a valid Xiaomi OTA ROM URL using: /mezo <ROM_URL>"
COOLDOWN_PLAIN = "Please wait a few minutes before sending another DeadZone Lite request."
DISPATCH_FAIL_HTML = "❌ Could not submit your request right now.\nPlease contact MEZO or try again later."
DISPATCH_FAIL_PLAIN = "❌ Could not submit your request right now.\nPlease contact MEZO or try again later."


def read_text(path, default=""):
    file_path = Path(path)
    if not file_path.exists():
        return default
    try:
        return file_path.read_text(encoding="utf-8", errors="replace").strip() or default
    except Exception:
        return default


def read_offset():
    raw = read_text(OFFSET_FILE, "")
    try:
        return int(raw)
    except ValueError:
        return 0


def write_offset(offset):
    OFFSET_FILE.parent.mkdir(parents=True, exist_ok=True)
    OFFSET_FILE.write_text(str(int(offset)), encoding="utf-8")


def load_cooldowns():
    if not COOLDOWN_FILE.exists():
        return {}
    try:
        data = json.loads(COOLDOWN_FILE.read_text(encoding="utf-8"))
        return data if isinstance(data, dict) else {}
    except Exception:
        return {}


def save_cooldowns(data):
    COOLDOWN_FILE.parent.mkdir(parents=True, exist_ok=True)
    COOLDOWN_FILE.write_text(json.dumps(data, indent=2, ensure_ascii=False), encoding="utf-8")


def telegram_api(token, method, payload):
    url = f"https://api.telegram.org/bot{token}/{method}"
    response = requests.post(url, json=payload, timeout=30)
    response.raise_for_status()
    return response.json()


def send_public_message(token, chat_id, text_html, text_plain, reply_to_message_id=None):
    rich_payload = {
        "chat_id": chat_id,
        "text": text_html,
        "parse_mode": "HTML",
        "disable_web_page_preview": True,
    }
    if reply_to_message_id:
        rich_payload["reply_to_message_id"] = int(reply_to_message_id)
    try:
        telegram_api(token, "sendMessage", rich_payload)
        return
    except requests.RequestException:
        plain_payload = {
            "chat_id": chat_id,
            "text": text_plain,
            "disable_web_page_preview": True,
        }
        if reply_to_message_id:
            plain_payload["reply_to_message_id"] = int(reply_to_message_id)
        telegram_api(token, "sendMessage", plain_payload)


def github_repository():
    value = (
        os.environ.get("PUBLIC_BOT_REPOSITORY")
        or os.environ.get("GITHUB_REPOSITORY")
        or read_text(".git/config", "")
    )
    if "/" in value and "\n" not in value:
        return value.strip()

    match = re.search(r"github\.com[:/]+([^/\s]+)/([^/\s]+?)(?:\.git)?\s", value + " ")
    if match:
        return f"{match.group(1)}/{match.group(2)}"
    return ""


def workflow_name():
    return os.environ.get("PUBLIC_BOT_WORKFLOW", PUBLIC_WORKFLOW)


def public_group_id():
    return os.environ.get("TELEGRAM_PUBLIC_GROUP_ID") or os.environ.get("PUBLIC_GROUP_ID")


def public_build_mode_enabled():
    return os.environ.get("PUBLIC_BUILD_MODE", "").strip().lower() == "true"


def validate_rom_url(url):
    candidate = (url or "").strip()
    if not candidate.startswith("https://"):
        return False
    lowered = candidate.lower()
    if not (lowered.endswith(".zip") or "ota_full" in lowered):
        return False
    xiaomi_tokens = ("xiaomi", "miui", "hyperos", "ota", "mi.com", "aliyuncs", "bkt-sgp-miui-ota-update")
    return any(token in lowered for token in xiaomi_tokens)


def is_premium_request(text):
    lowered = (text or "").lower()
    blocked_patterns = (
        "/mezo_ninja",
        "/mezo_legend",
        "/mezo_gaming",
        "gamingplus",
        "gaming",
        "legend",
        "ninja",
        "plus",
    )
    return any(pattern in lowered for pattern in blocked_patterns)


def extract_rom_url(text):
    match = re.match(r"^/mezo(?:@\w+)?\s+(\S+)", (text or "").strip(), re.IGNORECASE)
    if match:
        return match.group(1).strip()
    return ""


def user_key(message):
    user = message.get("from") or {}
    return str(user.get("id") or "")


def user_label(message):
    user = message.get("from") or {}
    username = user.get("username")
    if username:
        return f"@{username}"
    full_name = " ".join(part for part in [user.get("first_name", ""), user.get("last_name", "")] if part).strip()
    return full_name or "Public User"


def cooldown_active(key, cooldowns, now_ts):
    if not key:
        return False
    expires_at = int(cooldowns.get(key, 0) or 0)
    return expires_at > now_ts


def set_cooldown(key, cooldowns, now_ts):
    if key:
        cooldowns[key] = int(now_ts + COOLDOWN_SECONDS)


def dispatch_lite_build(token, repo_name, rom_url, requester):
    url = f"https://api.github.com/repos/{repo_name}/actions/workflows/{workflow_name()}/dispatches"
    headers = {
        "Authorization": f"Bearer {token}",
        "Accept": "application/vnd.github+json",
    }
    payload = {
        "ref": "main",
        "inputs": {
            "rom_url": rom_url,
            "builder_name": "Public User",
            "builder_id": "",
            "public_request_chat_id": str(requester.get("chat_id", "") or ""),
            "public_request_message_id": str(requester.get("message_id", "") or ""),
            "public_request_user": requester.get("user_label", "Public User"),
        },
    }
    response = requests.post(url, headers=headers, json=payload, timeout=30)
    response.raise_for_status()


def handle_message(bot_token, gh_token, repo_name, message, cooldowns):
    chat = message.get("chat") or {}
    chat_id = str(chat.get("id") or "")
    message_id = message.get("message_id")
    text = message.get("text") or ""
    now_ts = int(time.time())
    allowed_group = public_group_id()

    if allowed_group and chat_id != str(allowed_group):
        return

    if is_premium_request(text):
        try:
            send_public_message(bot_token, chat_id, BLOCKED_HTML, BLOCKED_PLAIN, reply_to_message_id=message_id)
        except requests.RequestException as exc:
            print(f"[PUBLIC BOT] blocked-message send failed: {exc}", file=sys.stderr)
        return

    if not re.match(r"^/mezo(?:@\w+)?(?:\s|$)", text.strip(), re.IGNORECASE):
        return

    rom_url = extract_rom_url(text)
    if not rom_url:
        try:
            send_public_message(bot_token, chat_id, USAGE_PLAIN, USAGE_PLAIN, reply_to_message_id=message_id)
        except requests.RequestException as exc:
            print(f"[PUBLIC BOT] usage-message send failed: {exc}", file=sys.stderr)
        return

    if not validate_rom_url(rom_url):
        try:
            send_public_message(bot_token, chat_id, INVALID_URL_PLAIN, INVALID_URL_PLAIN, reply_to_message_id=message_id)
        except requests.RequestException as exc:
            print(f"[PUBLIC BOT] invalid-url-message send failed: {exc}", file=sys.stderr)
        return

    requester_key = user_key(message)
    if cooldown_active(requester_key, cooldowns, now_ts):
        try:
            send_public_message(bot_token, chat_id, COOLDOWN_PLAIN, COOLDOWN_PLAIN, reply_to_message_id=message_id)
        except requests.RequestException as exc:
            print(f"[PUBLIC BOT] cooldown-message send failed: {exc}", file=sys.stderr)
        return

    try:
        dispatch_lite_build(
            token=gh_token,
            repo_name=repo_name,
            rom_url=rom_url,
            requester={
                "chat_id": chat_id,
                "message_id": message_id,
                "user_label": user_label(message),
            },
        )
    except requests.RequestException as exc:
        print(f"[PUBLIC BOT] workflow dispatch failed: {exc}", file=sys.stderr)
        try:
            send_public_message(bot_token, chat_id, DISPATCH_FAIL_HTML, DISPATCH_FAIL_PLAIN, reply_to_message_id=message_id)
        except requests.RequestException as send_exc:
            print(f"[PUBLIC BOT] dispatch-failure message send failed: {send_exc}", file=sys.stderr)
        return

    set_cooldown(requester_key, cooldowns, now_ts)
    save_cooldowns(cooldowns)
    try:
        send_public_message(bot_token, chat_id, ACK_HTML, ACK_PLAIN, reply_to_message_id=message_id)
    except requests.RequestException as exc:
        print(f"[PUBLIC BOT] acknowledgement send failed: {exc}", file=sys.stderr)


def poll_updates():
    bot_token = os.environ.get("TELEGRAM_BOT_TOKEN", "").strip()
    gh_token = os.environ.get("GH_TOKEN", "").strip()
    repo_name = github_repository()

    if not public_build_mode_enabled():
        raise SystemExit("PUBLIC_BUILD_MODE=true is required.")
    if os.environ.get("PUBLIC_BUILD_STYLE", PUBLIC_STYLE) != PUBLIC_STYLE:
        raise SystemExit("PUBLIC_BUILD_STYLE must stay Lite.")
    if workflow_name() != PUBLIC_WORKFLOW:
        raise SystemExit("PUBLIC_BOT_WORKFLOW must stay MEZO_Lite_bot.yml.")
    if not bot_token:
        raise SystemExit("TELEGRAM_BOT_TOKEN is required.")
    if not gh_token:
        raise SystemExit("GH_TOKEN is required.")
    if not repo_name:
        raise SystemExit("Unable to resolve GitHub repository slug.")

    cooldowns = load_cooldowns()
    offset = read_offset()

    while True:
        params = {"timeout": 30, "offset": offset}
        response = requests.get(f"https://api.telegram.org/bot{bot_token}/getUpdates", params=params, timeout=45)
        response.raise_for_status()
        payload = response.json()
        for update in payload.get("result", []):
            offset = max(offset, int(update.get("update_id", 0)) + 1)
            message = update.get("message") or update.get("edited_message") or {}
            if not message:
                continue
            try:
                handle_message(bot_token, gh_token, repo_name, message, cooldowns)
            except requests.RequestException:
                continue
            finally:
                write_offset(offset)
        time.sleep(1)


if __name__ == "__main__":
    poll_updates()
