#!/bin/bash
sudo apt-get install vim -y

BASEDIR=$(dirname "$0")
cp $BASEDIR/../config/vimrc $HOME/.vimrc
