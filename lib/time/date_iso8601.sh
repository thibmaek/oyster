#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# time.iso8601(): Print an ISO8601 date
# ------------------------------------------------------------------------------
function oy::time.iso8601() {
  date +"%Y-%m-%dT%H:%M:%S%z"
}
