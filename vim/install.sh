#!/bin/sh
# Installs vundle and vundle file

if [ ! -e $HOME/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
vim -u $HOME/.dotfiles/vim/vimrc.bundles +PlugInstall +PlugClean! +qa
