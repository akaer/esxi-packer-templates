#!/bin/sh

set -ex

esxcli network vswitch standard add --ports 128 --vswitch-name vSwitch1
esxcli network vswitch standard portgroup add --portgroup-name "Host Only 001" --vswitch-name vSwitch1
esxcli network vswitch standard portgroup add --portgroup-name "Host Only 002" --vswitch-name vSwitch1
esxcli network vswitch standard portgroup set -p "Host Only 002" --vlan-id 2
esxcli network vswitch standard portgroup add --portgroup-name "Host Only 003" --vswitch-name vSwitch1
esxcli network vswitch standard portgroup set -p "Host Only 003" --vlan-id 3

