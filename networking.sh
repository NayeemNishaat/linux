# cat /etc/nsswitch.conf
# cat /etc/hosts
# cat /etc/sysconfig/network
# cd /etc/sysconfig/network-scripts
# vi ifcfg-enp0s3
# cat /etc/resolv.conf

# vi /etc/hosts (add new entry 192.168.0.1 mydomain)
# ping mydomain
# ifconfig
# ifup
# ifdown
# netstat -rnv
# tcpdump -i enp0s3

# ethtool enp0s3

# NMTUI
# Note: Use it as a text user interface to configure networks

# NMCLI
# nmcli # list interfaces
# nmcli con show # will show connections
# nmcli device # list the devices
# nmcli connection modify en0 ipv4.addresses 10.245.1.24/24
# nmcli connection modify en0 ipv4.gateway 10.245.1.1/24
# nmcli connection modify en0 ipv4.method manual
# nmcli connection modify en0 ipv4.dns 8.8.8.8
# nmcli connection down en0
# nmcli connection up en0
# ip address show en0

# nmcli device status
# nmcli connection show --active
# nmcli connection modify en0 +ipv4.addresses 10.245.1.210/24
# nmcli connection reload
# systemctl reboot
# ip address show
