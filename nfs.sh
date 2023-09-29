# yum install nfs-utils libnfsidmap
# systemctl enable rpcbind
# systemctl enable nfs-server
# systemctl start rpcbind
# systemctl start nfs-server
# systemctl start rpc-statd
# systemctl start nfs-idmapd

# mkdir /nfs-dir
# chmod a+rwx /nfs-dir

# ADD NFS SHARED FS
# Remark: create a backup, /etc/exports
# vi /etc/exports # add following line:
# /nfs-dir 192.168.12.3 (rw,sync,no_root_squash) # for a specific ip
# /nfs-dir * (rw,sync,no_root_squash) # for all ips

# exportfs -rv # export the nfs fs
