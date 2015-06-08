#!/bin/sh

if test ! $(which nvm)
then
  echo "  Installing nvm for you."
  brew install nvm > /tmp/nvm-install.log

  if [ ! -d $HOME/.nvm ]
  then
    echo "  Copying nvm-exec"
    mkdir $HOME/.nvm
    cp $(brew --prefix nvm)/nvm-exec $HOME/.nvm/
  fi
fi

