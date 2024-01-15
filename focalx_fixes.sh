#!/bin/bash

# Check if the user is running the script with sudo
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run with sudo" 
   exit 1
fi

# Check if OpenBTS file exists in /etc/logrotate.d and remove it if it does
if [ -f /etc/logrotate.d/OpenBTS ]; then
   rm /etc/logrotate.d/OpenBTS
   echo "OpenBTS file removed from /etc/logrotate.d"
fi

# Fix typo in /usr/share/applications/mirage.desktop file
sed -i 's/miarge/mirage/' /usr/share/applications/mirage.desktop
echo "Typo in /usr/share/applications/mirage.desktop fixed"
