#!/bin/bash
git clone https://github.com/maurosoria/dirsearch.git $TOOLDIR/dirsearch
echo 'alias dirsearch="python3 $HOME/tools/dirsearch/dirsearch.py"' >> $HOME/.bashrc
