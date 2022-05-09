#! /usr/bin/env bash

# ------------------------------------------------------------------------------
# fs.list_empty_files(): Lists files of zero bytes.
# ------------------------------------------------------------------------------
function oy::fs.list_empty_files() {
  find . -type f -empty
}
