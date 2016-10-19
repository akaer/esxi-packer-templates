esxcli software vib install -v https://download3.vmware.com/software/vmw-tools/esxui/esxui-signed-4493986.vib
exit 0

#!/bin/sh

set -ex

# Install ESXi Embedded Host Client directly from VMware website, make
# sure you have internet connection available or change the URL to a local
# one.
#esxcli software vib install -v https://download3.vmware.com/software/vmw-tools/esxui/esxui-signed-4493986.vib

if [[ -e "/vmfs/volumes/datastore1/esxui-signed-4493986.vib" ]]; then
    esxcli software vib install \
        -v /vmfs/volumes/datastore1/esxui-signed-4493986.vib -f
    rm -f /vmfs/volumes/datastore1/esxui-signed-4493986.vib
fi
