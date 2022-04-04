#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# os.is_linux(): Check if the current OS is Linux
# ------------------------------------------------------------------------------
function oy::os.is_linux() {
  if [ "$(uname)" == "Linux" ]; then
    return 0
  fi

  return 1
}
