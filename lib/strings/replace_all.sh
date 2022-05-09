#! /usr/bin/env bash

# ------------------------------------------------------------------------------
# str.replace_all(): Replace all occurrences of a string/char.
#
# Arguments:
#   $1: source string
#   $3: string/char to replace
#   $2: replacement string
# ------------------------------------------------------------------------------
function oy::str.replace_all() {
  local str="$1"
  local src="$2"
  local repl="$3"
  echo "${str//$src/$repl}"
}
