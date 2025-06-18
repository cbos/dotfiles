#!/bin/sh

set -e # -e: exit on error

mkdir -p $HOME/.local/bin/

if [ ! "$(command -v mc)" ]; then
  # Download and install starship. Add the --force argument, otherwise it cannot be executed without manual confirmation
  curl -sS https://starship.rs/install.sh | sh -s -- --yes

  curl https://dl.min.io/client/mc/release/linux-amd64/mc \
    --create-dirs \
    -o $HOME/.local/bin/mc
  chmod +x $HOME/.local/bin/mc
fi

