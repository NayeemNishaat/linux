# TAR
# tar -cvf f.tar . # create tar archive with compress and verbose
# tar --exclude file -cvf f.tar . # exclude a file
# tar -tvf f.tar # show the contents of tar file
# tar -xvf f.tar # extract from tar ball
# tar -czvf f.gz . # create gz archive

# GZIP
# gzip f.tar # compress tar file
# gzip -9 f.tar # highest compression level
# gzip -d f.tar.gz # decompress tar file
# gunzip f.tar.gz # decompress tar file same as above command
# tar -czvf file.tar.gz . # gzip with compression level 1
GZIP=-9 tar -zcvf file.tar.gz /path/to/directory
# tar -ztvf projects.tar.gz # list gzip (-z is optional)
# tar -xzvf projects.tar.gz -C /tmp/ # extract to the /tmp/ dir

# XZ
tar -Jcvf file.tar.xz /path/to/directory # Compress with default level
XZ_OPT=-9 tar -Jcvf stripe.tar.xz . # Compress with level 9
