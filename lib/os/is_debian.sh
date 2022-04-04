#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# os.is_debian(): Check if the current OS is Debian
# ------------------------------------------------------------------------------
function oy::os.is_debian() {
  if [ "$(uname)" == "Linux" ]; then
    if grep -q "ID=debian" /etc/os-release; then
      return 0
    else
      return 1
    fi
  fi

  return 1
}
