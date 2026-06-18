#!/bin/bash

is_supported_style() {
    case "${1:-}" in
        [Ll]ite|[Pp]lus|[Ss]table|[Ff]ree|[Gg]aming[Pp]lus|[Gg]aming_[Pp]lus|[Ll]egend|[Pp]aid|[Nn]inja)
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

resolve_style_id() {
    local raw="${1:-}"
    case "${raw,,}" in
        lite)
            printf 'lite\n'
            ;;
        plus|stable|free|gamingplus|gaming_plus)
            printf 'gamingplus\n'
            ;;
        legend|paid)
            printf 'legend\n'
            ;;
        ninja)
            printf 'ninja\n'
            ;;
        *)
            return 1
            ;;
    esac
}

normalize_style_id() {
    resolve_style_id "${1:-Lite}" 2>/dev/null || printf 'lite\n'
}

style_display_name() {
    case "$(normalize_style_id "$1")" in
        lite)
            printf 'Lite\n'
            ;;
        gamingplus)
            printf 'GamingPlus\n'
            ;;
        legend)
            printf 'Legend\n'
            ;;
        ninja)
            printf 'Ninja\n'
            ;;
    esac
}

style_zip_prefix() {
    case "$(normalize_style_id "$1")" in
        lite)
            printf 'DeadZoneLite\n'
            ;;
        gamingplus)
            printf 'DeadZoneGamingPlus\n'
            ;;
        legend)
            printf 'DeadZoneLegend\n'
            ;;
        ninja)
            printf 'DeadZoneNinja\n'
            ;;
    esac
}

style_tier_name() {
    case "$(normalize_style_id "$1")" in
        lite|gamingplus)
            printf 'Free\n'
            ;;
        legend|ninja)
            printf 'Paid\n'
            ;;
    esac
}
