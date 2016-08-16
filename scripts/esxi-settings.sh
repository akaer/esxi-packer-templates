esxcli network firewall ruleset set -e true -r httpClient
esxcli network firewall ruleset set -e true -r ntpClient
esxcli system settings advanced set -o /Net/GuestIPHack -i 1
esxcli system settings advanced set -o /UserVars/HostClient.CEIPOptIn -i 2
