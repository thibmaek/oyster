#! /usr/bin/env bash

# ------------------------------------------------------------------------------
# str.lower(): Convert a string to lowercase.
#
# Arguments:
#   $1: a string to convert to lowercase
# ------------------------------------------------------------------------------
function oy::str.lower() {
  local str="$1"
  printf "%s" "${str,,}"
}
