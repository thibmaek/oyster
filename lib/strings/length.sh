#! /usr/bin/env bash

# ------------------------------------------------------------------------------
# str.len(): Get the length of a string.
#
# Arguments:
#   $1: a string to get the length from
# ------------------------------------------------------------------------------
function oy::str.len() {
  local str="$1"
  printf "%s" "${#str}"
}
