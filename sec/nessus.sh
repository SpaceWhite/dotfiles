#!/bin/bash
wget https://www.tenable.com/downloads/api/v1/public/pages/nessus/downloads/10717/download?i_agree_to_tenable_license_agreement=true -O $TOOLDIR/nessus.deb
sudo dpkg -i $TOOLDIR/nessus.deb
rm $TOOLDIR/nessus.deb
