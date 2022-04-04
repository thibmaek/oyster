#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# os.is_ubuntu(): Check if the current OS is Ubuntu
# ------------------------------------------------------------------------------
function oy::os.is_debian() {
  if [ "$(uname)" == "Linux" ]; then
    if [ -f /etc/lsb-release ]; then
      return 0
    else
      return 1
    fi
  fi

  return 1
}
