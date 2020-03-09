#!/bin/bash
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip -O aquatone.zip
mkdir -p $TOOLDIR/aquatone
unzip -qq aquatone.zip -d $TOOLDIR/aquatone/
rm aquatone.zip

echo 'export PATH="$PATH:$TOOLDIR/aquatone"' >> $HOME/.bashrc
