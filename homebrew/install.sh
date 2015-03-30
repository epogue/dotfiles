#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew install grc coreutils spark 

# Go vim!
brew install macvim --override-system-vim

# Tmux config
brew tap Goles/battery
reattach-to-user-namespace battery tmux

exit 0
