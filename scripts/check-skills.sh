#!/usr/bin/env bash
set -euo pipefail

fail=0
count=0

for dir in skills/*/; do
  [[ -f "$dir/SKILL.md" ]] || continue
  count=$((count + 1))
  dirname=$(basename "$dir")
  fm=$(awk 'NR==1 && $0!="---"{exit 1} NR>1 && $0=="---"{exit} NR>1{print}' "$dir/SKILL.md") || {
    echo "FAIL $dirname: no frontmatter"
    fail=1
    continue
  }
  name=$(printf '%s\n' "$fm" | awk '/^name:/{sub(/^name:[[:space:]]*/, ""); print; exit}')
  desc=$(printf '%s\n' "$fm" | awk '/^description:/{sub(/^description:[[:space:]]*/, ""); print; exit}')
  if [[ "$name" != "$dirname" ]]; then
    echo "FAIL $dirname: name '$name' != directory name"
    fail=1
  fi
  if [[ -z "$desc" ]]; then
    echo "FAIL $dirname: empty description"
    fail=1
  elif ! (printf '%s' "$desc" | grep -q '[a-zA-Z]' && printf '%s' "$desc" | grep -q '[一-龥]'); then
    echo "FAIL $dirname: description not bilingual"
    fail=1
  elif printf '%s' "$desc" | grep -q ': ' && [[ "${desc:0:1}" != '"' && "${desc:0:1}" != "'" ]]; then
    echo "FAIL $dirname: unquoted description contains ': ' (breaks strict YAML parsers, e.g. npx skills)"
    fail=1
  fi
done

if [[ $count -eq 0 ]]; then
  echo "FAIL: no skills found under skills/"
  exit 1
fi

[[ $fail -eq 0 ]] && echo "OK: $count skills checked" || exit 1
