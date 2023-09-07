# HELP COMMANDS
# whatis ls # short description about the command
# ls --help # show help manu of the cmd
# man ls # show the manual of the cmd

# WRITE TO FILE
# echo 'abc def' > file # overwrite to file
# echo 'abc def' >> file # append to file
# ls -l > file # redirect output to file (overwrite)
# ls -l >> file # redirect output to file (append)

# REDIRECTS
# Remark: everything in linux is a file
# stdin -> 0 (file descriptor)
# stdout -> 1
# stderr -> 2
# cat < file # feed cat from file
# mail -s 'memo' abc@mail.com < letter (< is input sign)
# cat root  2>> file # redirect std err to file (Warning: there should be no space between 2 and >>)
# cat root  2> file
# ls >> file 2>&1 # redirect std out and std err to file

# TEE
# Note: tee can be used to output data to file and screen both
# echo "HEllo MF" | tee file
# echo "HEllo MF" | tee -a file # append
# wc -c file # show chars of a file
# echo "HEllo MF" | tee -a file1 file2 # output to multiple file

# PIPE
# ls | more
# cat file | more # hit space to view next page, q -> quit, down arrow -> 1 more line
# ll | tail -1 # view last line

# CP
# cp file newfile
# cp file new-loc
# cp file new-loc/newfile
# cp -r folder new-location
# cp -r folder new-location/renamed-folder

# RM
# rm file
# rm -r folder
# rm -rf folder

# MV
# mv a b
# mv a ../
# mv a ../b
# mv a b c ./abc

# MKDIR
# mkdir folder

# RMDIR
# rmdir empty-dir-name

# CAT
# cat file

# MORE
# more file

# LESS
# Note: reverse order one page at a time
# less file

# HEAD
# head -2 file

# TAIL
# tail -2 file

# TRUNCATE
# truncate -s 9 file # truncate the file to 9 bytes
# truncate -s 100 file-backup # if size is greater than original file size then truncate will all empty characters to the file to increate the size

# SPLIT
# split -l 2 file sep- # split the file by 2 lines and new sub file name is sep-

# MERGE
# cat sep-aa sep-ab sep-ac >> joined # concat files to one file
# cat sep-aa sep-ab sep-ac > joinedx
# cat sep-* > joinedx
