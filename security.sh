# Note: Choose an uncommon username
# chage -l username # update password change policy
# cat /etc/shadow # password info
# cat /etc/login.defs # default login stats
# cat /etc/pam.d/system-auth
# systemctl -a # list all services
# netstat -tunlp # list all open listening ports
# netstat -tunlp tcp # list all open listening ports (tcp)
# lsof -i :63937 # find what is running on a port
# cat /etc/ssh/sshd_config # view ssh config (permit root login -> no)
# Note: enable firewall
# ufw allow 22

# SELINUX
# sestatus
# cat /etc/sysconfig/selinux
# man chcon
# man checkpolicy
# stat filename # get file stats

