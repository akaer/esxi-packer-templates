#!/usr/bin/env bash

set -ex

time packer build \
       -var 'iso_file=VMware-VMvisor-Installer-6.7.0.update01-10302608.x86_64.iso' \
       -var 'iso_sha1sum=4635ecdb818330f42603aa91616463d9a70f5c8b' \
       packer-esxi.json 2>&1 |tee packer_build.log

