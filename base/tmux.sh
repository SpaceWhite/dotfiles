#!/bin/bash
sudo apt-get install tmux -y

BASEDIR=$(dirname "$0")
cp $BASEDIR/../config/tmux.conf $HOME/.tmux.conf
