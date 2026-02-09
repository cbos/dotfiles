#!/bin/sh

set -e # -e: exit on error

if [ ! "$(command -v eza)" ]; then
  # Download and install eza
  if [ "$(uname)" == "Darwin" ]; then
      brew install eza
  else
      if [ "$(command -v brew)" ]; then
        brew install eza
      else
        wget -c https://github.com/eza-community/eza/releases/latest/download/eza_x86_64-unknown-linux-gnu.tar.gz -O - | tar xz
        chmod +x eza
        mv eza $HOME/.local/bin/eza
      fi
  fi
fi

