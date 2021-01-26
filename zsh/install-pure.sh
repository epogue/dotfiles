#! /usr/bin/env bash

mkdir -p "$HOME/.zsh"
if [ ! -d "$HOME/.zsh/pure" ]; then
  echo "==> Installing pure prompt..."
  git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
else
  echo "==> Updating pure prompt..."
  cd "$HOME/.zsh/pure" && git pull
fi
