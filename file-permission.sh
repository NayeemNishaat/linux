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
