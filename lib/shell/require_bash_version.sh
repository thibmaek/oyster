#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# require_bash_version(): Require a minimum bash version
#
# Arguments:
#   $1: Required bash version as an int
# ------------------------------------------------------------------------------
function oy::require_bash_version() {
  local requiredVersion="$1"

  if [ ! "${BASH_VERSINFO:-0}" -ge "$requiredVersion" ]; then
    echo "Bash $requiredVersion or higher is required to run this script"
    return 1
  fi

  return 0
}
