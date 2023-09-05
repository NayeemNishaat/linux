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
