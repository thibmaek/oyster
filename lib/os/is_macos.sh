#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# os.is_macos(): Check if the current OS is macOS / Darwin
# ------------------------------------------------------------------------------
function oy::os.is_macos() {
  if [ "$(uname)" == "Darwin" ]; then
    return 0
  fi

  return 1
}

# ------------------------------------------------------------------------------
# os.is_darwin(): Check if the current OS is macOS / Darwin
#
# This is an alias for oy::os.is_macos()
# ------------------------------------------------------------------------------
function oy::os.is_darwin() {
  oy::os.is_macos
}
