# Note: some files/folders/commands that have special permission (special bit) that is run by the owner of the file not the current user. i.e. passwd (run by root not the current user)

# find / -perm /6000 -type -f # will return all commands with special permission
# Important: Special permission can only be set for c/c++ programs not for bash scripts (rws -> s is special bit)
# (rwt -> t is sticky bit) # purpose of this sticky bit is to prevent deletion of file/dir

# chmod +t file # set sticky bit to file
# chmod +s file # set special bit to file
