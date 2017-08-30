# Packer template for building VMWare ESXi 6.0 with latest fixes

Latest version:

  * ESXi600-201706001 (Profile name: ESXi-6.0.0-20170304001-standard)
    Release Date: 06/06/2017
    Build Number: 5224934
    SHA1: d4178dfddef01e9585c6c11ae20a1e1869c20457

## Prerequisites

* [Packer](http://packer.io) > 0.8
* VMware Fusion or Workstation

## Build artifacts

This packer template requires to variables to be set either via command line or separate JSON file:

1. `iso_file` - is the ESXi ISO for the build (can be local or remote).
1. `iso_sha1sum` - is the SHA1 sum of the ISO you want to build.

To kick off a full build:

```shell
packer build \
       -var 'iso_file=/Volumes/isos/VMWare/ESXi/VMware-VMvisor-Installer-6.0.0.update03-5050593.x86_64.iso' \
       -var 'iso_sha1sum=37c5b91914d605cd1cd36dd12aa927baed15e652' \
       packer-esxi.json
```

The Packer template and the scripts have been tested with ESXi version 6.0.

Default `root` password for the resulting Vagrant box is `vagrant`.

There is a convenience script provided to build a known version of the vagrant box.

```shell
./build-6.0.0.update02.sh
```

To kick off a full debug build:

```shell
PACKER_LOG=1 PACKER_LOG_PATH=build.log packer build \
       -var 'iso_file=/Volumes/isos/VMWare/ESXi/VMware-VMvisor-Installer-6.0.0.update03-5050593.x86_64.iso' \
       -var 'iso_sha1sum=37c5b91914d605cd1cd36dd12aa927baed15e652' \
       packer-esxi.json
```

## Legal

Copyright © 2015 VMware, Inc.  All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the “License”); you may not
use this file except in compliance with the License.  You may obtain a copy of
the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an “AS IS” BASIS, without warranties or
conditions of any kind, EITHER EXPRESS OR IMPLIED.  See the License for the
specific language governing permissions and limitations under the License.
