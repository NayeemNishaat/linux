# SERVER
# yum install nfs-utils libnfsidmap rpcbind
# systemctl enable rpcbind
# systemctl enable nfs-server
# systemctl start rpcbind
# systemctl start nfs-server
# systemctl start rpc-statd
# systemctl start nfs-idmapd

# mkdir /nfs-dir
# chmod a+rwx /nfs-dir

# ADD NFS SHARED FS
# vi /etc/exports # add following line:
# /nfs-dir 192.168.12.3(rw,sync,no_root_squash) # for a specific ip
# /nfs-dir *(rw,sync,no_root_squash) # for all ips

# exportfs -rv # export the nfs fs

# CLIENT
# yum install nfs-utils
# yum install rpcbind -y

# systemctl start rpcbind
# ps -ef | grep rpc

# ps -ef | egrep "firewall | iptable"
# Allow port via firewall/disable firewall

# showmount -e 192.168.12.1 # show mount from nfs server ip

# mkdir /mnt/app # create mount point
# mount 192.168.1.5:/nfs-dir /mnt/app

# umount /mnt/app
