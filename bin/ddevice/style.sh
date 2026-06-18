#!/bin/bash

normalize_style_id() {
    local raw="${1:-Lite}"
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
            printf 'lite\n'
            ;;
    esac
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
