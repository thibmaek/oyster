#! /usr/bin/env bash

# ------------------------------------------------------------------------------
# fs.filecount(): Gets the total amount of files in current dir.
# ------------------------------------------------------------------------------
function oy::fs.filecount() {
  find . -type f | wc -l
}
