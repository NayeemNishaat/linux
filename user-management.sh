# Note: Must be the su to execute the commands
# useradd ironman # add user
# id ironman # check if user created
# groupadd superheros # add group
# cat /etc/group # check groups
# userdel -r ./ironman # delete user
# groupdel ironmangroup # delete group
# usermod -G supergroup ironman # add ironman to supergroup

# cat /etc/passwd
# cat /etc/group
# cat /etc/shadow

# _sshd:*:75:75:sshd Privilege separation:/var/empty:/usr/bin/false # username, password, user id, group id, description, home dir, shell used by _sshd
# wheel:*:0:root # group name, group pass, group id, root is also part of the group

# cat /etc/shadow # shadow is for password

# useradd -g superherogrp -s /bin/bash -c "Iron Man" -m -d /home/ironman ironman

# passwd newpass # set the password for the current logged in user
