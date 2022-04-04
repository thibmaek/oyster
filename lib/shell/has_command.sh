#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# has_command(): Check if a command is known to the shell.
#
# Arguments:
#   $1: Command to check existence for
# ------------------------------------------------------------------------------
function oy::has_command() {
  local cmd="$1"

  if command -v "$cmd"; then
    return 1
  fi

  return 0
}
