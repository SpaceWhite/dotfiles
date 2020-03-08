#!/bin/bash
wget https://github.com/tsl0922/ttyd/releases/download/1.6.0/ttyd_linux.x86_64
mkdir -p $TOOLDIR/ttyd
mv ttyd_linux.x86_64 $TOOLDIR/ttyd/ttyd
chmod +x $TOOLDIR/ttyd/ttyd

mkdir -p $TOOLDIR/services/

echo "$TOOLDIR/ttyd/ttyd -c admin:Admin123456789 bash &>/dev/null &" > $TOOLDIR/services/ttyd.sh
echo "disown" >> $TOOLDIR/services/ttyd.sh

chmod +x $TOOLDIR/services/ttyd.sh
