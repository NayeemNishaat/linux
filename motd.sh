touch /etc/profile.d/motd.sh
#
#!/bin/bash
# 
echo -e "
#################
#
# Welcome to `hostname`
# kernel is ``uname -r
# system is running `cat /etc/redhat-release`
# logged in as `whoami`
# 
#################

cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

vi /etc/ssh/sshd_config # edit the file
PrintMotd no

systemctl restart sshd.service
