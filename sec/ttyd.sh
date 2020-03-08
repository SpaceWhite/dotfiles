#!/bin/bash
wget https://github.com/tsl0922/ttyd/releases/download/1.6.0/ttyd_linux.x86_64
mkdir $TOOLDIR/ttyd
mv ttyd_linux.x86_64 $TOOLDIR/ttyd/ttyd
chmod +x $TOOLDIR/ttyd/ttyd
