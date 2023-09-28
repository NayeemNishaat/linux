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
# w -> write table to disk and exit

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


# ADD DISK AND CREATE NEW LVM PARTITION
# fdisk -l # show hard disks

# Note: Create a new partition
# fdisk /dev/sdb # this will go to interactive mode (type help/m to get help menu)
# In the interactive shell:
# n -> add new partition
# p -> primary partition type
# Rest are default
# t -> to change the partion system id
# 8e -> Hex Code for Linux LVM (type L to see all codes)
# p -> View the selected details
# w -> Write the changes

# Note: Create a physical volume
# pvcreate /dev/sdc1

# pvdisplay # show partition volumes

# Note: Create volume group
# vgcreate vol_grp_name /dev/sdc1
# vgdisplay vol_grp_name # show vol group info

# Note: Create logical volume
# lvcreate -n logical_vol_name --size 1000M vol_grp_name

# Note: Assign file system
# mkfs.xfs /dev/vol_grp_name/logical_vol_name

# Note: Mount FS
# mkdir /lvm
# mount /dev/vol_grp_name/logical_vol_name /lvm

# Note: Mount at boot
# vi /etc/fstab
# /dev/vol_grp_name/logical_vol_name /lvm xfs 0 0
