# DU
# du -sh # get current folder size
# du -sh /Users/labyrinth/Downloads # get /Users/labyrinth/Downloads folder size
# du -hd 0 # get current folder size only
# du -h -d 1 # get current folder’s sub folders’s  size
# du -ha # get all sub file’s size
# du -hd 1 -t 300M # get files greater than 500M at depth 1 (all dir/file of current dir)

# DF
# df -h # get disk info in human readable format

# FDISK
# fdisk -l # show hard disks

# Note: Create a new partition
# fdisk /dev/sdb # this will go to interactive mode (type help/m to get help menu)
# In the interactive shell:
# n -> add new partition
# p -> primary partition type
# Rest are default
# w -> write table to disk and exit (to change the partion system id type "t" and provide hex code "8e" to check hex code type L. hit p to see details and finally typw w and enter to write)

# Note: Create a new File System from the partition
# fdisk -l # show available volums
# mkfs.xfs /dev/sdb1 # make file system from a volume/partition

# Note: Mount the file system
# mkdir /mount_point
# mount /dev/sdb1 /mount_point
# df -h

# Note: Make the mount persistent
# vi /etc/fstab # edit this file as follows,
# /dev/sdb1  /data  xfs  defaults  0  0
# init 6 # reboot

# Note Unmount
# umount /data
# mount -a # will mount all described in /etc/fstab
