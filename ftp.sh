# SERVER
# Note: Check if port 21 is open
# Note: Check if ftpd is running
# Note: Check if server has internet access
# Note: install vsftpd package in the server
# rpm -qa | grep vsftpd
# Note: make changes to /etc/vsftpd/vsftpd.conf

# UPDATE
# anonymous_enable=NO
# UNCOMMENT
# ascii_upload_enable=YES
# ascii_download_enable=YES
# ftpd_banner=Welcome
# ADD
# use_localtime=YES

# Note: systemctl start vsftpd
# Note: systemctl enable vsftpd
# Note: allow port 21 through firewall
# Note: create a user for the ftp access (any user except root will do)

# CLIENT
# Note: install ftp
# ftp 192.168.1.6 # (ip of the server)
# Note: enter username and password of the server user
# bin
# hash
# put file
# bye
