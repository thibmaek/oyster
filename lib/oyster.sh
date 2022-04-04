#!/usr/bin/env bash
set -o errtrace # Exit on error inside any functions or sub-shells
set -euo pipefail

# shellcheck disable=SC2155
readonly OYSTER_LIB_DIR="$(dirname "${BASH_SOURCE[0]}")"

# shellcheck source=./const.sh
source "$OYSTER_LIB_DIR/const.sh"

function oy::version() {
  echo "$OYSTER_VERSION"
}

for fs_mod in "$OYSTER_LIB_DIR"/fs/*; do
  # shellcheck source=/dev/null
  [ -r "$fs_mod" ] && [ -f "$fs_mod" ] && source "$fs_mod"
done

for os_mod in "$OYSTER_LIB_DIR"/os/*; do
  # shellcheck source=/dev/null
  [ -r "$os_mod" ] && [ -f "$os_mod" ] && source "$os_mod"
done

for print_mod in "$OYSTER_LIB_DIR"/print/*; do
  # shellcheck source=/dev/null
  [ -r "$print_mod" ] && [ -f "$print_mod" ] && source "$print_mod"
done

for shell_mod in "$OYSTER_LIB_DIR"/shell/*; do
  # shellcheck source=/dev/null
  [ -r "$shell_mod" ] && [ -f "$shell_mod" ] && source "$shell_mod"
done

for str_mod in "$OYSTER_LIB_DIR"/strings/*; do
  # shellcheck source=/dev/null
  [ -r "$str_mod" ] && [ -f "$str_mod" ] && source "$str_mod"
done

for time_mod in "$OYSTER_LIB_DIR"/time/*; do
  # shellcheck source=/dev/null
  [ -r "$time_mod" ] && [ -f "$time_mod" ] && source "$time_mod"
done
