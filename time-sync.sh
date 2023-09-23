# Important: Eitcher run ntpd or chronyd not both.

# NTPD
# yum install ntp
# cat /etc/ntp.conf # config file edit it to add new time server (server ntp.server.address)
# systemctl start ntpd
# systemctl restart ntpd
# Note: ntp port is 123
# ntpq # type peers in prompt and this will show list of time servers

# CHRONYD
# yum install chrony
# cat /etc/chrony.conf # config file edit it to add new time server (server ntp.server.address)
# ststemctl start chronyd
# chronyc # Get to interactive mode and run 'sources' will show all time servers
# ststemctl restart chronyd
