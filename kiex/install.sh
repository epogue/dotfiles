#!/bin/sh
#
# Kiex

if test ! $(which kiex)
then
  curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s
fi

exit 0