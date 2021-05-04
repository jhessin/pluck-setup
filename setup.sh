#!/usr/bin/env bash

# clone the repo
if [ -d "$HOME/pluck-setup" ]; then
  echo Repo downloaded starting setup...
else
  echo Downloading repo...
  git clone https://github.com/jhessin/pluck-setup.git $HOME/pluck-setup
fi

cd $HOME/pluck-setup

sudo ./pluck.installer

sudo apt remove firefox

pluck import pluck.settings
