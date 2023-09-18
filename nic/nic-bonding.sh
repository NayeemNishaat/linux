# Add a new NIC if it does not exist
# Install bonding driver (modprobe bonding)
# modinfo bonding # To list the bonding module info

# Create Bond Interface File
# vi /etc/sysconfig/network-scripts/ifcfg-bond0
# Add the following parameters in the file
# DEVICE=bond0
# TYPE=Bond
# NAME=bond0
# BONDING_MASTER=yes
# BOOTPROTO=none # or static
# ONBOOT=yes
# IPADDR=192.168.1.80
# NETMASK=255.255.255.0
# GATEWAY=192.168.1.1
# BONDING_OPTS=”mode=5 miimon=100”
# Save and exit the file

# Edit the First NIC File (enp0s3)
# vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
# Delete the entire content
# Add the following parameters
# TYPE=Ethernet
# BOOTPROTO=none
# DEVICE=enp0s3
# ONBOOT=yes
# HWADDR=”MAC from the ifconfig command”
# MASTER=bond0
# SLAVE=yes
# Save and exit the file

# Create the Second NIC File (enp0s8) or Copy enp0s3
# vi /etc/sysconfig/network-scripts/ifcfg-enp0s8
# Add the following parameters
# TYPE=Ethernet
# BOOTPROTO=none
# DEVICE=enp0s8
# ONBOOT=yes
# HWADDR=”MAC from the ifconfig command”
# MASTER=bond0
# SLAVE=yes
# Save and exit the file
# Restart the Network Service
# systemctl restart network

# Test and verify the configuration
# ifconfig or ifconfig | more
# Use following command to view bond interface settings like bonding mode & slave interface
# cat /proc/net/bonding/bond0

# MAC
# networksetup -listallhardwareports
