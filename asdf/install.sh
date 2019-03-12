#!/bin/sh

git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf
cd $HOME/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

