#!/bin/sh

set -e # -e: exit on error

if [ ! "$(command -v starship)" ]; then
  curl -sS https://starship.rs/install.sh | sh
fi

