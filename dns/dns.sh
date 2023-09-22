# DNS RECORD TYPE
# hostname to IP -> A Record
# IP to hostname -> PTY Record
# hostname to hostname -> CNAME Record

# INSTALL DNS PKG
# yum install bind bind-utils -y

# CONFIGURE DNS SERVER
# vi /etc/named.conf

# MODIFY
listen-on port 53 { 127.0.0.1; 192.168.1.29; };

# INCLUDE
# Remark: Remove existing zone "." IN {...}
zone "lab.local" IN {
type master;
file "forward.lab";
allow-update { none; };
};
zone "1.168.192.in-addr.arpa" IN {
type master;
file "reverse.lab";
allow-update { none; };
};

# Create Zone Files
# cd /var/named
touch forward.lab
touch reverse.lab

# EDIT FORWARD ZONE FILE
$TTL 86400
@ IN SOA masterdns.lab.local. root.lab.local. (
2011071001 ;Serial # serial number has to be updated for each edit and restart/reload named service
3600 ;Refresh
 1800 ;Retry
604800 ;Expire
86400 ;Minimum TTL
)
@ IN NS masterdns.lab.local.
@ IN A 192.168.1.29
masterdns IN A 192.168.1.29
clienta IN A 192.168.1.240
clientb IN A 192.168.1.241


# EDIT REVERSE ZONE FILE
$TTL 86400
@ IN SOA masterdns.lab.local. root.lab.local. (
 2011071001 ;Serial
 3600 ;Refresh
 1800 ;Retry
 604800 ;Expire
 86400 ;Minimum TTL
)
@ IN NS masterdns.lab.local.
@ IN PTR lab.local.
masterdns IN A 192.168.1.29
29 IN PTR masterdns.lab.local.
240 IN PTR clienta.lab.local.
241 IN PTR clientb.lab.local.


# START DNS SERVER
# systemctl start named
# systemctl enable named

# ALLOW PORT 53 VIA FIREWALL

# Configuring Permissions, Ownership, and SELinux
# chgrp named -R /var/named
# chown -v root:named /etc/named.conf
# restorecon -rv /var/named # for selinux
# restorecon /etc/named.conf # for selinux


# Test DNS configuration and zone files for any syntax errors
# named-checkconf /etc/named.conf
# named-checkzone lab.local /var/named/forward.lab
# named-checkzone lab.local /var/named/reverse.lab

# Add DNS Server Information to network file
# vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
# DNS=192.168.1.29

# Restart network service
# systemctl restart network (This will also reset the /etc/resolv.conf)
# systemctl restart NetworkManager.service (For CentOS8)

# Modify /etc/resolv.conf
# nameserver 192.168.1.29

# Test DNS server
# dig masterdns.lab.local
# nslookup masterdns.lab.local
# nslookup clienta.lab.local
# nslookup clientb.lab.local
# nslookup 192.168.1.240
# nslookup 192.168.1.241

# Using the rndc Utility
# rndc status # Checking the Service Status
# rndc reload # reload both the configuration file and zones
# rndc reload localhost # reload a single zone
# rndc reconfig # to reload the configuration file and newly added zones only
