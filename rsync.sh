# sshd should be active
# port 22 should be open
# install rsync if not available

# RSYNC FILE LOCALLY
# rsync -zvh backupfile /tmp/backup

# RSYNC DIRECTORY LOCALLY
# rsync -azvh /home/laby /tmp/laby

# RSYNC FILE TO REMOTE
# rsync -avz file.tar user@192.134.57.88:/home/user # enter password to start transfer to server

# RSYNC FILE FROM REMOTE
# rsync -avzh user@192.134.57.88:/home/user/file.tar /home/localuser # enter password to start transfer from server
