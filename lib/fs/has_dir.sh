#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# fs.has_dir(): Check if a directory exists
#
# Arguments:
#   $1: Directory name
# ------------------------------------------------------------------------------
function oy::fs.has_dir() {
  local dir="$1"

  if [ ! -d "$dir" ]; then
    return 1
  fi

  return 0
}
