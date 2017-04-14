#!/bin/sh

set -ex

# This is ESXi 6.5 a

#esxcli software profile update -p ESXi-6.5.0-20170104001-standard -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml

if [[ -e "/vmfs/volumes/datastore1/ESXi650-201701001.zip" ]]; then
    esxcli software profile update \
        -d /vmfs/volumes/datastore1/ESXi650-201701001.zip \
        -p ESXi-6.5.0-20170104001-standard
    rm -f /vmfs/volumes/datastore1/ESXi650-201701001.zip
    reboot
fi
