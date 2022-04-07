#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="/usr/local/opt/oyster"

function log() {
  printf '\033[34m%s\033[0m\n' "$1"
  printf '\n'
}

function prereqs() {
  if ! command -v curl >/dev/null; then
    log "You need curl to install oyster."
    exit 1
  fi
  mkdir -p "$BASE_DIR"
}

function download_release() {
  local downloadURL
  downloadURL=$(curl -s "https://api.github.com/repos/thibmaek/oyster/releases/latest" |
    grep "browser_download_url" |
    grep -v ".sha256" |
    cut -d '"' -f 4)

  curl -sL "$downloadURL" -o "$BASE_DIR/oyster.tar.gz"
  tar xf "$BASE_DIR/oyster.tar.gz" -C "$BASE_DIR"
  rm "$BASE_DIR/oyster.tar.gz"
}

function install_release() {
  folderName=$(curl -s "https://api.github.com/repos/thibmaek/oyster/releases/latest" |
    grep '"name": "oyster-' |
    grep -v ".sha256" |
    cut -d '"' -f 4 |
    sed s/.tar.gz//)

  if [ -f "/usr/local/bin/oyster" ]; then
    log "Deleting previous oyster version at /usr/local/bin/oyster"
    echo 'rm "/usr/local/bin/oyster"'
    rm "/usr/local/bin/oyster"
  fi

  cd "$BASE_DIR/$folderName" &&
    printf "\n" &&
    log "Installing oyster to /usr/local/bin/oyster" &&
    make install &&
    printf "\n" &&
    log "Oyster installed! This is the new oyster:" &&
    /usr/local/bin/oyster --version
}

function install() {
  prereqs
  printf '\n'
  log "🦪 Installing thibmaek/oyster!"
  download_release && install_release
}

install
