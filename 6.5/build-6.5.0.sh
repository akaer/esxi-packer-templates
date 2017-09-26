#!/usr/bin/env bash

set -ex

time packer build \
       -var 'iso_file=VMware-VMvisor-Installer-6.5.0.update01-5969303.x86_64.iso' \
       -var 'iso_sha1sum=5a38ae10162e0a1395b12ea31cba6342796f6383' \
       packer-esxi.json 2>&1 |tee packer_build.log

