#! /usr/bin/env bash

# ------------------------------------------------------------------------------
# str.first_char(): Get the first character of a string.
#
# Arguments:
#   $1: a string to get the character from
# ------------------------------------------------------------------------------
function oy::str.first_char() {
  local str="$1"
  echo "${str:0:1}"
}
