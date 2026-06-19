#!/bin/bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
work_dir="${WORK_DIR:-$(pwd)}"
if [[ ! -f "$work_dir/functions.sh" ]]; then
    work_dir="$(cd "$script_dir/../../../.." && pwd)"
fi

source "$work_dir/functions.sh"

find_product_dir() {
    local candidates=(
        "$work_dir/build/baserom/images/product"
        "$work_dir/build/baserom/product"
        "$work_dir/images/product"
        "$work_dir/product"
        "$work_dir/build/product"
    )
    local candidate=""
    for candidate in "${candidates[@]}"; do
        if [[ -d "$candidate" ]]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

source_overlay="$script_dir/overlay"
if [[ ! -d "$source_overlay" ]]; then
    error "❌ Overlay source folder missing"
    exit 1
fi

if ! find "$source_overlay" -mindepth 1 -print -quit | grep -q .; then
    error "❌ Overlay source folder is empty"
    exit 1
fi

if ! product_dir="$(find_product_dir)"; then
    error "❌ product partition directory not found for Overlay_Product_Overlay"
    exit 1
fi

target_overlay="$product_dir/overlay"

info "Applying product overlay merge"
info "Source: $source_overlay"
info "Target: $target_overlay"
mkdir -p "$target_overlay"
cp -a "$source_overlay/." "$target_overlay/"
info "✅ Product overlay merge completed"
