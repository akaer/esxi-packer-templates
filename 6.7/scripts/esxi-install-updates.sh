#!/bin/sh

set -ex

esxcli system version get
#vdf -h

#esxcli network firewall ruleset set -e true -r httpClient
#esxcli system maintenanceMode set -e true

# ESXi-6.7.0-20181104001-standard (Build 10764712)
#esxcli software profile update -p ESXi-6.7.0-20181104001-standard \
#    -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml

#esxcli system version get

# ESXi-6.7.0-20190104001-standard (Build 11675023)
#esxcli software profile update -p ESXi-6.7.0-20190104001-standard \
#    -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml

#esxcli system maintenanceMode set -e false
#esxcli network firewall ruleset set -e false -r httpClient

#esxcli system version get

exit 0
