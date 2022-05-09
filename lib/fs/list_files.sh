#! /usr/bin/env bash

# ------------------------------------------------------------------------------
# fs.list_files(): List only files in parseable format
# ------------------------------------------------------------------------------
function oy::fs.list_files() {
  find . -type f
}
