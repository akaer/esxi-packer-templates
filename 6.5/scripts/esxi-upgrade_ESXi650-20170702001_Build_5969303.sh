#!/bin/sh

set -ex

#esxcli software profile update -p ESXi-6.5.0-20170702001-standard -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml

UPDATEFILE="/vmfs/volumes/datastore1/update-from-esxi6.5-6.5_update01.zip"
UPDATEPROFILE="ESXi-6.5.0-20170702001-standard"

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
