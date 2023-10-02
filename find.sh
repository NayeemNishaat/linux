# find . -type f -size +50M -exec du -h {} \; | sort -n # find files greater than 50M and execute du -h for each line and finally sort by numerically
# find . -name 'pattern' # basic find
# find . ! -name 'pattern'
# find . -name "*.vtt" ! -name "*English*" -delete # find all .vtt except one containing english and delete
# find ../.. -samefile fxx # find hardlinks
# find ../.. -inum 20948039 # find file with same inode number (hard link)
# find . -name *.js -size +1M -ls
