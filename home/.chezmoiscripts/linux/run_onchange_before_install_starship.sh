#!/bin/sh

set -e # -e: exit on error

if [ ! "$(command -v starship)" ]; then
  # Download and install starship. Add the --force argument, otherwise it cannot be executed without manual confirmation
  curl -sS https://starship.rs/install.sh | xargs -I {} sh -c {} -s --force
fi

