# Note: check if sshd is running
# Note: check if port 22 is open
# ifconfig interface # get the ip of the server interface
# scp file remote@193.23.56.21:/home/user # username@server_ip:location_in_server
# Note: enter the server password to transfer
# scp root@1.2.3.4:/root/pcfilename.rar ./

# UPLOAD
scp local_file user@remote_host:remote_file

# DOWNLOAD
scp user@remote_host:remote_file local_file 
