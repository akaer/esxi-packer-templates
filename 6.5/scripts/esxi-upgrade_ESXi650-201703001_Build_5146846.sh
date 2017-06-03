#!/bin/sh

set -ex

#esxcli software profile update -p ESXi-6.5.0-20170304001-standard -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml

UPDATEFILE="/vmfs/volumes/datastore1/ESXi650-201703001.zip"
UPDATEPROFILE="ESXi-6.5.0-20170304001-standard"

if [[ -e "${UPDATEFILE}" ]]; then
    cd /vmfs/volumes/datastore1/
    if sha1sum -c "${UPDATEFILE}".sha1 ; then
        esxcli software profile update \
         -d "${UPDATEFILE}" \
         -p "${UPDATEPROFILE}"
        rm -f "${UPDATEFILE}"
        reboot
    else
        echo "Invalid checksum for ${UPDATEFILE}. Update is skipped"
    fi
fi
