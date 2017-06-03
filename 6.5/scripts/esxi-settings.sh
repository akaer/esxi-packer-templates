esxcli network firewall ruleset set --enabled=true --ruleset-id=httpClient
esxcli network firewall ruleset set --enabled=true --ruleset-id=ntpClient
esxcli system settings advanced set -o /Net/GuestIPHack -i 1

echo "server ptbtime1.ptb.de" >>/etc/ntp.conf
chkconfig --add ntpd

esxcfg-advcfg --set 0 /Mem/ShareForceSalting

