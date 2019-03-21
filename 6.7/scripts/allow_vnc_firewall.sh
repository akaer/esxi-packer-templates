#!/bin/sh

set -x

FIREWALL_CONFIG=packervnc.xml

cat > /tmp/${FIREWALL_CONFIG} << __CUSTOM_ESXI_FIREWALL_RULE__
<ConfigRoot>
  <service>
    <id>packervnc</id>
    <rule id='0000'>
      <direction>inbound</direction>
      <protocol>tcp</protocol>
      <porttype>dst</porttype>
      <port>5900</port>
    </rule>
    <rule id='0001'>
      <direction>outbound</direction>
      <protocol>tcp</protocol>
      <porttype>dst</porttype>
      <port>5900</port>
    </rule>
    <enabled>true</enabled>
    <required>false</required>
  </service>
</ConfigRoot>
__CUSTOM_ESXI_FIREWALL_RULE__

# Copy the new firewall rule to correct directory
cp /tmp/${FIREWALL_CONFIG} /etc/vmware/firewall/

# Delete the tmp firewall rule
rm -f /tmp/${FIREWALL_CONFIG}

# Reload the ESXi firewall for the changes to go into effect
esxcli network firewall refresh

