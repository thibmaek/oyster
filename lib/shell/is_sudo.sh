#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# is_sudo(): Check if the current user is root.
# ------------------------------------------------------------------------------
function oy::is_sudo() {
  if [[ "$EUID" -ne 0 ]]; then
    return 0
  fi

  return 1
}
