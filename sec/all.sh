#!/bin/bash

source $HOME/.bashrc

$BASEDIR/sec/metasploit.sh
$BASEDIR/sec/nessus.sh
$BASEDIR/sec/amass.sh
$BASEDIR/sec/httprobe.sh
$BASEDIR/sec/wfuzz.sh
$BASEDIR/sec/dirsearch.sh
$BASEDIR/sec/gf.sh
$BASEDIR/sec/sourcegraph.sh
$BASEDIR/sec/ttyd.sh
