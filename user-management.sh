# Note: Must be the su to execute the commands
# USERADD
# useradd ironman # add user
# id ironman # check if user created
# dscacheutil -q user | grep -A 3 -B 2 -e uid:\ 5'[0-9][0-9]' # get all users in the host

# GROUPADD
# groupadd superheros # add group
# cat /etc/group # check groups

# USERDEL
# userdel -r ./ironman # delete user

# GROUPDEL
# groupdel ironmangroup # delete group

# USERMOD
# usermod -aG supergroup ironman # add ironman to supergroup
# grep supergroup /etc/group

# FILES TO VIEW USER INFO
# cat /etc/passwd # show users info
# cat /etc/group # show groups
# cat /etc/shadow # show password info

# _sshd:*:75:75:sshd Privilege separation:/var/empty:/usr/bin/false # username, password, user id, group id, description, home dir, shell used by _sshd
# wheel:*:0:root # group name, group pass, group id, root is also part of the group

# useradd -g superherogrp -s /bin/bash -c "Iron Man" -m -d /home/ironman ironman # add user to group superherogrp, -s to give shell permission, -c is the description. -m for create home -d for home dir

# CHANGE PASSWORD
# passwd newpass # set the password for the current logged in user


# PASSWORD AGING DEFAULTS
# more /etc/login.defs # show aging info, modify it to change the defaults

#CHAGE
# -d days ((Jan 1 1970)) since last password change, use it to set the last password change day
# -m min days between password changes (i.e. if min is 5 user cannot change the password until 5 days has been passed since the last password change date)
# -M max days the password will be valid since last change date (after that user must need to change the password)
# -W warn # of days before the password expires
# -I after password expires days after the account is inactivated
# -E expire days since Jan 1 1970 that the account will be disabled
# grep username /etc/shadow # get user password info
# chage -m 5 -M 90 -W 10 -I 3 -E 9999999 username # create username who can't change password within 5 days of creation, and must need to change the pass after 90 days and will receive a warning before 10 before 90 days has been passed and if user didn't change password withing 3 days after the 90 days passed account will be inactive and after the 9999999 days account will be disabled

# SU
# su - username # login as username
# su - # login as root

# SUDO
# Note: To provide sudo access to a user we need to either edit the visudo file to grant him permission or add the user to wheel group
# Note: Wheel group has all pemisions
# visudo # show sudo info, edit this to grant permissions to users
# username ALL=(ALL)  ALL # will allow username to run all commands anywhere
# usermod -aG wheel username
# su -s # get super user access to current account
