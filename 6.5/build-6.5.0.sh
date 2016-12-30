#!/usr/bin/env bash

set -ex

time packer build \
       -var 'iso_file=/Volumes/isos/VMWare/ESXi/VMware-VMvisor-Installer-6.5.0-4564106.x86_64.iso' \
       -var 'iso_sha1sum=4b71e69c606a54ae1c4b34341e341f1f6786d7b2' \
       packer-esxi.json 2>&1 |tee packer_build.log

