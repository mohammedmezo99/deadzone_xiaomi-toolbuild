#!/usr/bin/env bash
# Ninja OS3_A16 patch helper library. Runtime uses generated smali/resource files only; no .mtcr is used.
set -euo pipefail
: "${NINJA_PACK_DIR:?NINJA_PACK_DIR is required}"
NINJA_REPORT_DIR="${NINJA_REPORT_DIR:-out/reports/ninja-os3-a16}"
NINJA_REPORT_TSV="$NINJA_REPORT_DIR/ninja-os3-a16-report.tsv"
NINJA_SUMMARY_TXT="$NINJA_REPORT_DIR/ninja-os3-a16-summary.txt"
NINJA_APPLIED=0; NINJA_SKIPPED=0; NINJA_ERROR=0; NINJA_BLOCKER=0
mkdir -p "$NINJA_REPORT_DIR"
if [[ ! -f "$NINJA_REPORT_TSV" ]]; then printf 'target_module\ttarget_file\tpatch_function\tclass_name\tstatus\treason\n' > "$NINJA_REPORT_TSV"; fi
ninja_log_info()    { echo "[Ninja][OS3_A16] $*"; }
ninja_log_applied() { echo "[Ninja][OS3_A16] APPLIED $*"; NINJA_APPLIED=$((NINJA_APPLIED+1)); }
ninja_log_skip()    { echo "[Ninja][OS3_A16] SKIPPED $*"; NINJA_SKIPPED=$((NINJA_SKIPPED+1)); }
ninja_log_error()   { echo "[Ninja][OS3_A16] ERROR $*"; NINJA_ERROR=$((NINJA_ERROR+1)); }
ninja_log_blocker() { echo "[Ninja][OS3_A16] BLOCKER $*"; NINJA_BLOCKER=$((NINJA_BLOCKER+1)); }
ninja_report_row() { printf '%s\t%s\t%s\t%s\t%s\t%s\n' "$1" "$2" "$3" "$4" "$5" "$6" >> "$NINJA_REPORT_TSV"; }
ninja_find_smali_file() { local roots="$1" class_path="$2" root; IFS=':' read -r -a arr <<< "$roots"; for root in "${arr[@]}"; do [[ -d "$root" ]] || continue; [[ -f "$root/$class_path" ]] && { printf '%s\n' "$root/$class_path"; return 0; }; done; return 1; }
ninja_first_smali_root() { local roots="$1" root; IFS=':' read -r -a arr <<< "$roots"; for root in "${arr[@]}"; do [[ -d "$root" ]] || continue; printf '%s\n' "$root"; return 0; done; return 1; }
ninja_apply_smali_template() {
  local module="$1" roots="$2" template_rel="$3" class_path="$4" mode="$5" func="$6" target dest_root
  local template="$NINJA_PACK_DIR/patches/generated_smali/$module/$template_rel"
  [[ -f "$template" ]] || { ninja_log_error "$class_path template missing"; ninja_report_row "$module" "$template_rel" "$func" "$class_path" "ERROR" "template missing"; return 1; }
  if target=$(ninja_find_smali_file "$roots" "$class_path"); then
    if cmp -s "$template" "$target"; then ninja_log_skip "$class_path already patched"; ninja_report_row "$module" "$target" "$func" "$class_path" "SKIPPED" "already patched"; return 0; fi
    cp -f "$target" "$target.ninja.bak"; cp -f "$template" "$target"; ninja_log_applied "$class_path replaced"; ninja_report_row "$module" "$target" "$func" "$class_path" "APPLIED" "class replaced from generated smali template"; return 0
  fi
  if [[ "$mode" == "modified" ]]; then ninja_log_error "$class_path target not found for modified class"; ninja_report_row "$module" "$class_path" "$func" "$class_path" "ERROR" "modified target class missing"; return 1; fi
  dest_root=$(ninja_first_smali_root "$roots") || { ninja_log_error "$class_path no smali root found"; ninja_report_row "$module" "$class_path" "$func" "$class_path" "ERROR" "no smali root"; return 1; }
  mkdir -p "$(dirname "$dest_root/$class_path")"; cp -f "$template" "$dest_root/$class_path"; ninja_log_applied "$class_path added"; ninja_report_row "$module" "$dest_root/$class_path" "$func" "$class_path" "APPLIED" "added generated smali class"
}
substitute_string_regex() { local file="$1" pattern="$2" replacement="$3"; python3 - "$file" "$pattern" "$replacement" <<'PY'
import sys, re, pathlib
p=pathlib.Path(sys.argv[1]); pat=sys.argv[2]; rep=sys.argv[3]
s=p.read_text(encoding='utf-8', errors='replace')
ns,n=re.subn(pat, rep, s, count=1, flags=re.S|re.M)
if n <= 0: sys.exit(2)
p.write_text(ns, encoding='utf-8')
PY
}
substitute_string_wildcard() { substitute_string_regex "$@"; }
ensure_locals_capacity() { return 0; }; ensure_unique_label() { return 0; }
ninja_copy_dir_contents() { local src="$1" dst="$2"; [[ -d "$src" ]] || return 0; mkdir -p "$dst"; (cd "$src" && tar -cf - .) | (cd "$dst" && tar -xf -); }
remove_oat_artifacts() { local target="$1" dir name noext; dir=$(dirname "$target"); name=$(basename "$target"); noext="${name%.*}"; rm -rf "$dir/oat" "$dir/arm" "$dir/arm64" || true; find "$dir" -maxdepth 2 \( -name "*.odex" -o -name "*.vdex" -o -name "*.art" \) -delete 2>/dev/null || true; find "$dir" -maxdepth 3 \( -name "$noext.odex" -o -name "$noext.vdex" \) -delete 2>/dev/null || true; }
ninja_write_summary() { cat > "$NINJA_SUMMARY_TXT" <<EOF
Ninja OS3_A16 runtime result
APPLIED=$NINJA_APPLIED
SKIPPED=$NINJA_SKIPPED
ERROR=$NINJA_ERROR
BLOCKER=$NINJA_BLOCKER
Report=$NINJA_REPORT_TSV
EOF
}
