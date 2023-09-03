# FILE LIST
# drwx------@   3 labyrinth  staff    96B Nov 10  2022 Applications # type num of links owner group size month day time name (Directory File)
# lrwxr-xr-x   1 root  wheel      36 Aug 22 03:37 localtime -> /var/db/timezone/zoneinfo/Asia/Dhaka (Link File)
# -rw-r--r--@ 1 labyrinth  staff   29615 Jan 19  2023 tbl statement.pdf (Normal File)
# - -> Regular file, d -> directory file, l -> link file, c -> special/device file, s -> socket file, p -> named pipe file, b -> block device file
# ls -ltr # list all in reverse time order

# CHANGE PASSWORD
# passwd nayeem # Change password for nayeem

# COPY
# cp a b # copy a to b (create b if doesn't exist and then copy)
# vi a # create file name a (in vim :w can be used to save/write current content)
# cp -r test ./abc/test-backup # Note the abc folder must exist

# MOVE
# mv a ../dir # move file a to directory dir

# DELETE
# rm file
# rmdir folder

# SEARCH
# locate filename # This will give the absolute path of the file
# find . -name 'file-name' # This will try to find the file from . directory
# find $(pwd) -name xx # find from cwd

# WILDCARD
# * -> 0 or more chars (te*)
# ? -> single chars (te?t)
# [] -> range of chars (te[a-z]t)

# touch file-{0..9} # create multiple files from 0-9
# ls file* # list all files where name starting with file
# rm file* # remove all files where name starting with file
# ls ? # return files with a single char
# ls ?abc*
# ls [ax]* # it will only list files also files from sub directories
# ls *[ax]* | more # any a or x any with paginated view

# WRITE TO FILE
# echo "abc" > a-back # clean and write
# echo "abc" >> a-back # append to file if doesn't exist create and append

# LINK
# ln -s ../ab ./test/ab-backup # create a soft link
# echo "abc" > ab-backup # write to the original file using the soft link
# rm ab-backup # deleted the soft link won't delete the original file
# ls -li # show file i node number
# ln ../b fx # create hard link
# rm b # remove hard link, will not affect the hard link file fx but updating one of them will update both
