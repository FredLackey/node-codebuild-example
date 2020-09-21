#! /bin/bash

main() {

  local SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
  local BASE_DIR=$(dirname $(dirname $(dirname $SCRIPT_PATH)))
  local PKG_NAME=$(node -p "require('$BASE_DIR/package.json').name")
  local PKG_VER=$(node -p "require('$BASE_DIR/package.json').version")

  local REPOSITORY_URL="123456789012.dkr.ecr.us-east-1.amazonaws.com/$PKG_NAME"

  eval "cd $BASE_DIR && docker build -t $REPOSITORY_URL:$PKG_VER -t $REPOSITORY_URL:latest ."
  eval "docker push $REPOSITORY_URL"
}

main
