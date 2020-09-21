#! /bin/bash

main() {

  local SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
  local BASE_DIR=$(dirname $(dirname $(dirname $SCRIPT_PATH)))
  local PKG_NAME=$(node -p "require('$BASE_DIR/package.json').name")
  local PKG_VER=$(node -p "require('$BASE_DIR/package.json').version")

  eval "cd $BASE_DIR && docker build -t $PKG_NAME:$PKG_VER -t $PKG_NAME:latest ."
}

main
