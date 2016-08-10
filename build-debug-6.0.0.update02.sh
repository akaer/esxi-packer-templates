#!/bin/sh

PACKER_LOG=1 PACKER_LOG_PATH=build.log packer build \
       -var 'iso_file=iso/VMware-VMvisor-Installer-6.0.0.update02-3620759.x86_64.iso' \
       -var 'iso_sha1sum=5a93f457980d18f7061c8b550c509682070cadc7' \
       packer-esxi.json
