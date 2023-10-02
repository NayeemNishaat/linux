# find . -type f -size +50M -exec du -h {} \; | sort -n # find files greater than 50M and execute du -h for each line and finally sort by numerically
