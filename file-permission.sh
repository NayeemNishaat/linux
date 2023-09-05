# ALPHABETIC PERMISSION
# a -> all, g -> group, o > other, u -> user
# + -> add, - -> remove
# r -> read, w -> write, x -> execute
# Note: drwx the x permission in a directory means it can be visited 
# chmod a+x file # give execute permission to all
# chmod g-w file # remove write permission form group

# NUMERIC PERMISSION
# 0 -> no permission
# 1 -> execute
# 2 -> write
# 3 -> execute + write
# 4 -> read
# 5 -> read + execute
# 6 -> read + write
# 7 -> read + write + execute
# chmod 764 file
# chmod 600 file

# CHANGE OWNER
# Important: Only root user can change ownership of a file
# chown root Admanager.pdf
# chgrp staff Admanager.pdf

# Warning: Although a file is owned by root and no permission to user/group/other this file can still be deleted if the parent directories are owned by the current user and has appropriate permissions.

# ACL
# setfacl -m u:user:rwx /var/tmp/file # add permission for user
# setfacl -m g:group:rw /var/tmp/file # add permission for group
# setfacl -Rm u:foo:rwX,d:u:foo:rwX /path/to/dir # recursively allow all files under the dir to inherit acl entries from the dir it is within (X only allows execute to folder not file but x for all)
# setfacl -x u:user /path/to/file # remove an entry
# setfacl -b /path/to/file # remove all entries for all users
# write permission with acl won't allow to delete the file but write. + will be added if contains acl in permission column
# getfacl file # get file acl

# HELP COMMANDS
# whatis ls # short description about the command
# ls --help # show help manu of the cmd
# man ls # show the manual of the cmd

# WRITE TO FILE
# echo 'abc def' > file # overwrite to file
# echo 'abc def' >> file # append to file
# ls -l > file # redirect output to file (overwrite)
# ls -l >> file # redirect output to file (append)
