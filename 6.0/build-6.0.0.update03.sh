#!/usr/bin/env bash

set -ex

time packer build \
       -var 'iso_file=/Volumes/isos/VMWare/ESXi/VMware-VMvisor-Installer-6.0.0.update03-5050593.x86_64.iso' \
       -var 'iso_sha1sum=37c5b91914d605cd1cd36dd12aa927baed15e652' \
       packer-esxi.json 2>&1 |tee packer_build.log
