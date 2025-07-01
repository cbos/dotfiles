#!/bin/sh

set -e # -e: exit on error

mkdir -p $HOME/.local/bin/

if [ ! "$(command -v mc)" ]; then
  curl https://dl.min.io/client/mc/release/linux-amd64/mc \
    --create-dirs \
    -o $HOME/.local/bin/mc
  chmod +x $HOME/.local/bin/mc
fi

