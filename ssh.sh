# cp /etc/ssh/sshd_config backup-dir # always create backup for config file before modifying
# vi /etc/ssh/sshd_config # add following lines
# clientAliveInterval 600 # 600 secs
# clientAliveCountMax 0
# PermitRootLogin no
# PermitEmptyPasswords no
# AllowUsers user1 user2
# Port 12213

# systemctl restart sshd
