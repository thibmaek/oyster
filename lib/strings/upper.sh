#! /usr/bin/env bash

# ------------------------------------------------------------------------------
# str.upper(): Convert a string to uppercase.
#
# Arguments:
#   $1: a string to convert to uppercase
# ------------------------------------------------------------------------------
function oy::str.upper() {
  local str="$1"
  printf "%s" "${str^^}"
}
