#!/bin/sh

esxcli software profile update -p ESXi-6.0.0-20160804001-standard -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml
reboot
