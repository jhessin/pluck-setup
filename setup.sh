#!/usr/bin/env bash

# clone the repo
if [ -d "$HOME/pluck-setup" ]; then
  echo Repo downloaded starting setup...
else
  echo Downloading repo...
  git clone https://github.com/jhessin/pluck-setup.git $HOME/pluck-setup
fi

cd $HOME/pluck-setup

sudo ./pluck.installer || echo "
Please visit http://pluckeye.net to download pluckeye
Then run this setup again.
  "

  sudo apt remove firefox

  pluck import pluck.settings
