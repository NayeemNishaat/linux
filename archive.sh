# TAR
# tar -cvf f.tar . # create tar archive with compress and verbose
# tar --exclude tar  -cvf f.tar . # exclude a file
# tar -tvf f.tar # show the contents of tar file
# tar -xvf f.tar # extract from tar ball
# tar -czvf f.gz .

# GZIP
# gzip f.tar # compress tar file
# gzip -9 f.tar # highest compression level
# gzip -d f.tar.gz # decompress tar file
# gunzip f.tar.gz # decompress tar file
# tar -czvf file.tar.gz . # gzip with compression level 1
# tar -ztvf projects.tar.gz # list gzip (-z is optional)
# tar -xzvf projects.tar.gz -C /tmp/ # extract to the /tmp/ dir
