# Firewalld
systemctl start/enable firewalld
systemctl mask firewalld # to prevent other programs to controll it
firewall-cmd --list-all
firewall-cmd --get-services
firewall-cmd --reload
firewall-cmd --get-zones
firewall-cmd --get-active-zones
firewall-cmd --zone=public --list-all
firewall-cmd --list-all

# Note: Add 3rd party service:
/usr/lib/firewalld/services/allservices.xml # copy any existing service xml file and change service name, desc and port
systemctl restart firewalld
firewall-cmd --get-services
firewall-cmd --add-service=sap

firewall-cmd --add-service=http
firewall-cmd --remove-service=http
firewall-cmd --add-service=http --permanent
firewall-cmd --remove-service=http --permanent
firewall-cmd --add-port=1110/tcp
firewall-cmd --remove-port=1110/tcp
firewall-cmd --add-port=1110/tcp --permanent
firewall-cmd --add-rich-rule='rule family="ipv4" source address="192.182.0.33" reject'
firewall-cmd --remove-rich-rule='rule family="ipv4" source address="192.182.0.33" reject'
firewall-cmd --add-icmp-block-inversion
firewall-cmd --remove-icmp-block-inversion

host -ta fb.com # get ip of a host
firewall-cmd --direct --add-rule ipv4 filter OUTPUT 0 -d 157.240.7.35 -j DROP

# UFW
sudo ufw reload
sudo ufw disable
sudo ufw enable
sudo ufw reset
sudo ufw status verbose
sudo ufw allow OpenSSH
sudo ufw allow ssh
sudo ufw allow 22
sudo ufw app list
sudo ufw allow 6000:6007/tcp
sudo ufw allow 6000:6007/udp
sudo ufw allow from 203.0.113.4
sudo ufw allow from 203.0.113.4 to any port 22
sudo ufw allow from 203.0.113.0/24 to any port 22
sudo ufw allow in on eth1 to any port 3306
sudo ufw deny http
sudo ufw deny from 203.0.113.4
sudo ufw deny out 25 # block outgoing connections from the server on port 25
sudo ufw status numbered
sudo ufw delete 2
sudo ufw delete allow "Apache Full"
sudo ufw delete allow http
sudo ufw delete allow 80

# IP Tables
sudo iptables -A INPUT -p tcp -s 203.0.113.0/24 --dport 22 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp --sport 22 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -s 203.0.113.51 -j DROP
sudo iptables -A INPUT -s 203.0.113.51 -j REJECT
iptables -A INPUT -i eth0 -s 203.0.113.51 -j DROP
sudo iptables -A INPUT -p tcp --dport 80 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp --sport 80 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p tcp -s 203.0.113.0/24 --dport 3306 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp --sport 3306 -m conntrack --ctstate ESTABLISHED -j ACCEPT
iptables -L -v
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -s 192.168.1.0/24 -j ACCEPT
iptables -D INPUT 2
iptables-save > /etc/iptables.rules
iptables-restore < /etc/iptables.rules
