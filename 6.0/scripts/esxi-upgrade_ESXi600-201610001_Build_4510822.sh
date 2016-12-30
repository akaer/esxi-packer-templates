#!/bin/sh

set -ex

#esxcli software profile update -p ESXi600-201610001-standard -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml

if [[ -e "/vmfs/volumes/datastore1/ESXi600-201610001.zip" ]]; then
    esxcli software profile update \
        -d /vmfs/volumes/datastore1/ESXi600-201610001.zip \
        -p ESXi-6.0.0-20161004001-standard
    rm -f /vmfs/volumes/datastore1/ESXi600-201610001.zip
    reboot
fi

