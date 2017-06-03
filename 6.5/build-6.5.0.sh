#!/usr/bin/env bash

set -ex

time packer build \
       -var 'iso_file=/Volumes/isos/VMWare/ESXi/VMware-VMvisor-Installer-201701001-4887370.x86_64.iso' \
       -var 'iso_sha1sum=fbfef38e102543427d4c62f4033cd292999325a8' \
       packer-esxi.json 2>&1 |tee packer_build.log

