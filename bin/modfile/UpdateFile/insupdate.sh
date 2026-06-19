work_dir=$(pwd)
source $work_dir/functions.sh

mods "Starting Update File..."
TARGET_DIR="$work_dir/bin/modfile/UpdateFile"
noexecute=( "insupdate" )

normalize_style() {
    local raw="${1:-}"
    raw="$(printf '%s' "$raw" | tr '[:upper:]' '[:lower:]' | tr -d '\r' | xargs 2>/dev/null)"
    case "$raw" in
        lite)
            printf 'Lite\n'
            ;;
        gamingplus|gaming_plus|plus|stable|free)
            printf 'GamingPlus\n'
            ;;
        legend|paid)
            printf 'Legend\n'
            ;;
        ninja)
            printf 'Ninja\n'
            ;;
        "")
            printf '\n'
            ;;
        *)
            printf '%s\n' "$raw"
            ;;
    esac
}

detect_current_style() {
    local detected=""
    for candidate in "${STYLE:-}" "${DZ_STYLE:-}" "${DZ_STYLE_ID:-}" "${DZ_FINAL_STYLE_ID:-}" "${INPUT_STYLE:-}"; do
        detected="$(normalize_style "$candidate")"
        if [[ -n "$detected" ]]; then
            printf '%s\n' "$detected"
            return 0
        fi
    done
    printf '\n'
}

read_scope_value() {
    local scope_file="$1"
    if [[ ! -f "$scope_file" ]]; then
        printf 'ALL\n'
        return 0
    fi

    local joined
    joined="$(tr ',\r' '\n\n' < "$scope_file" | sed '/^[[:space:]]*$/d' | sed 's/^[[:space:]]*//; s/[[:space:]]*$//')"
    if [[ -z "$joined" ]]; then
        printf 'ALL\n'
    else
        printf '%s\n' "$joined" | paste -sd, -
    fi
}

scope_matches_style() {
    local scope_file="$1"
    local current_style="$2"
    local scope_value
    scope_value="$(read_scope_value "$scope_file")"

    if [[ ! -f "$scope_file" || "${scope_value^^}" == "ALL" ]]; then
        return 0
    fi

    if [[ -z "$current_style" ]]; then
        return 1
    fi

    while IFS= read -r scope_item; do
        scope_item="$(normalize_style "$scope_item")"
        if [[ "$scope_item" == "ALL" || "$scope_item" == "$current_style" ]]; then
            return 0
        fi
    done < <(printf '%s\n' "$scope_value" | tr ',' '\n')

    return 1
}

run_updatefile_mod() {
    local mod_dir="$1"
    local script_path="$2"
    local mod_name="$3"
    local current_style="$4"
    local selected_mode="$5"
    local scope_file="$mod_dir/style.scope"
    local scope_value
    local style_label

    scope_value="$(read_scope_value "$scope_file")"
    style_label="${current_style:-unknown}"

    if ! scope_matches_style "$scope_file" "$current_style"; then
        if [[ "$selected_mode" == "selected" ]]; then
            info "⏭️ Selected UpdateFile mod ${mod_name} skipped by style scope; scope=${scope_value}, current style=${style_label}"
            return 0
        fi
        info "⏭️ Skipping UpdateFile mod ${mod_name}; scope=${scope_value}, current style=${style_label}"
        return 0
    fi

    info "✅ UpdateFile style scope matched: ${mod_name} for ${style_label}"
    bash "$script_path"
}

current_style="$(detect_current_style)"

if [[ -n "${DZ_UPDATE_MOD:-}" ]]; then
    info "Selected UpdateFile mod: ${DZ_UPDATE_MOD}"
    selected_dir="$TARGET_DIR/${DZ_UPDATE_MOD}"
    selected_script="$selected_dir/update.sh"

    if [[ ! -d "$selected_dir" ]]; then
        error "Selected UpdateFile mod not found: ${DZ_UPDATE_MOD}"
        exit 1
    fi

    if [[ ! -f "$selected_script" ]]; then
        error "Selected UpdateFile mod is missing update.sh: ${DZ_UPDATE_MOD}"
        exit 1
    fi

    run_updatefile_mod "$selected_dir" "$selected_script" "${DZ_UPDATE_MOD}" "$current_style" "selected"
    exit 0
fi

find "$TARGET_DIR" -type f -name "*.sh" | while read -r script; do
    base="$(basename "$script" .sh)"

    skip=false
    for ex in "${noexecute[@]}"; do
        if [[ "$base" == "$ex" ]]; then
            skip=true
            break
        fi
    done

    if [[ $skip == false ]]; then
        mod_dir="$(dirname "$script")"
        mod_name="$(basename "$mod_dir")"
        run_updatefile_mod "$mod_dir" "$script" "$mod_name" "$current_style" "all"
    fi
done
