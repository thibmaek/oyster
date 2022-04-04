#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# time.timestamp(): Print a timestamp for interpolation
# ------------------------------------------------------------------------------
function oy::time.timestamp() {
  date +"%m-%d-%y_%H-%M-%S"
}
