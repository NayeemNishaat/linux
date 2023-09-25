# centos installation wizard is called anaconda
# vi /root/anaconda-ks.cfg # modify the kickstart config for linux installation

# yum install httpd
# systemctl start httpd
# cp /root/anaconda-ks.cfg /var/www/html
# chmod a+r /var/www/html/anaconda-ks.cfg
# allow http port 80 via firewall
# check if anaconda-ks.cfg file is accessible via internet (server_ip/anaconda-ks.cfg).

# create a new vm/physical server
# change boot config # click esc to get to boot option (boot:)
# linux ks=http://ks_server_cfg_ip/anaconda-ks.cfg # for DHCP server
# linux inst.ks=nfs:ks_server_cfg_ip:/rhel8 # for NFS server

# KS WITH STATIC IP
# boot: linux ks=http://server.com/ks.cfg ksdevice=eth0 IP:192.168.1.50 netmask=255.255.255.0 gateway=192.168.1.1
# ksdevice-> network adapter of the client
# IP -> ip that will be assigned to the client
# netmask -> subnet mask for the client
# gateway -> gateway address for the client
