#!/bin/sh

set -e # -e: exit on error

if [ ! "$(command -v eza)" ]; then
  # Download and install eza
  if [ "$(uname)" == "Darwin" ]; then
      brew install eza
  else
      if [ "$(command -v brew)" ]; then
        brew install eza
      fi
  fi
fi

