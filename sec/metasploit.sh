#!/bin/bash

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > $TOOLDIR/msfinstall
chmod 755 $TOOLDIR/msfinstall
$TOOLDIR/msfinstall
rm $TOOLDIR/msfinstall
