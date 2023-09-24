# systemctl start/enable firewalld
# systemctl mask firewalld # to prevent other programs to controll it
# firewall-cmd --list-all
# firewall-cmd --get-services
# firewall-cmd --reload
# firewall-cmd --get-zones
# firewall-cmd --get-active-zones
# firewall-cmd --zone=public --list-all
# firewall-cmd --list-all

# Note: Add 3rd party service:
# /usr/lib/firewalld/services/allservices.xml # copy any existing service xml file and change service name, desc and port
# systemctl restart firewalld
# firewall-cmd --get-services
# firewall-cmd --add-service=sap

# firewall-cmd --add-service=http
# firewall-cmd --remove-service=http
# firewall-cmd --add-service=http --permanent
# firewall-cmd --remove-service=http --permanent
# firewall-cmd --add-port=1110/tcp
# firewall-cmd --remove-port=1110/tcp
# firewall-cmd --add-port=1110/tcp --permanent
# firewall-cmd --add-rich-rule='rule family="ipv4" source address="192.182.0.33" reject'
# firewall-cmd --remove-rich-rule='rule family="ipv4" source address="192.182.0.33" reject'
# firewall-cmd --add-icmp-block-inversion
# firewall-cmd --remove-icmp-block-inversion

# host -ta fb.com # get ip of a host
# firewall-cmd --direct --add-rule ipv4 filter OUTPUT 0 -d 157.240.7.35 -j DROP
