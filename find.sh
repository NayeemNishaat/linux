find . -type f -size +50M -exec du -h {} \; | sort -n # find files greater than 50M and execute du -h for each line and finally sort by numerically
find . -name 'pattern' # basic find
find . ! -name 'pattern'
find . -name "*.vtt" ! -name "*English*" -delete # find all .vtt except one containing english and delete
find ../.. -samefile fxx # find hardlinks
find ../.. -inum 20948039 # find file with same inode number (hard link)
find . -name *.js -size +1M -ls
sudo find . -name '*WenttoPakista*.mp4' -o -name '*IAMtheeart*.mp4'
find . -name "*M*" ! -name "Mov*" -maxdepth 1
find . -path './baas/treeQL' -prune -o -path './baas/*' # don't find inside ./baas/treeQL but ./baas/*
find . -name "*M*" | xargs ls -ltr
find . -name "*M*" -exec ls -l {} \; | sort -k6r # Note: Apply exect command to each element
find . -name '*.mp4' -exec du -ch {} + | grep total$ # Note: + means apply exec command to the combined elements
