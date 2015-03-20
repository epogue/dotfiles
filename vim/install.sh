#!/bin/sh
# Installs vundle and vundle file

if [ ! -e $HOME/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
vim -u $HOME/.dotfiles/vim/vimrc.bundles +PluginInstall +PluginClean! +qa
