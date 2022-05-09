#! /usr/bin/env bash

# ------------------------------------------------------------------------------
# fs.list_dirs(): List only directories in parseable format
# ------------------------------------------------------------------------------
function oy::fs.list_dirs() {
  find . -type d
}
