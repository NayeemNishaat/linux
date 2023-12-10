# DU
# du -sh # get current folder size
# du -sh /Users/labyrinth/Downloads # get /Users/labyrinth/Downloads folder size
# du -hd 0 # get current folder size only
# du -ha # get all sub file’s size
du -hd 1 # get only all dirs size at depth 1
du -ahd 1 # get all files and dirs size at depth 1
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
# vgcreate vg_name /dev/sdc1
# vgdisplay vg_name # show vol group info

# Note: Create logical volume
# lvcreate -n lv_name --size 1000M vg_name

# Note: Assign file system
# mkfs.xfs /dev/vg_name/lv_name

# Note: Mount FS
# mkdir /lvm
# mount /dev/vg_name/lv_name /lvm

# Note: Mount at boot
# vi /etc/fstab
# /dev/vg_name/lv_name /lvm xfs 0 0

# Note: extend existing lvm group (add new lvm valume to the lvm volume group)
# Key: Create a new lvm partition
# fdisk /dev/sdb # this will go to interactive mode (type help/m to get help menu)
# In the interactive shell:
# n -> add new partition
# p -> primary partition type
# Rest are default
# t -> to change the partion system id
# 8e -> Hex Code for Linux LVM (type L to see all codes)
# p -> View the selected details
# w -> Write the changes

# reboot to let the system read the new disk info
# fdisk -l /dev/sdd1

# pvdisplay # get desired pv and vg name
# pvs # get summary of vol groups and physical vols

# pvdisplay vg_name # display volume group info

# Note: Create physical vol from the newly created partition
# pvcreate /dev/sdd1

# vgextend vg_name /dev/sdd1

# lvextend -L+1024M /dev/mapper/vg_name-lv_name # get the fs name from df -h

# xfs_growfs /dev/mapper/vg_name-lv_name # extend the file system

# EXTEND SWAP SIZE
# free -m # show memory info
# dd if=/dev/zero of=/newswap bs=1M count=1024 # create new swap file
# chmod go-r newswap
# mkswap /newswap # create new swap from swap file
#  swapon /newswap # extend the swap

# Note: Enable new swap in boot time
# vi /etc/fstab # append following command
# /newswap	swap		swap		defaults	0	0

# Note: Remove swap
# swapoff /newswap # disable swap
# rm /newswap # remove swap file
# delete swap entry from /etc/fstab


# STRATIS
# dnf install stratis-cli stratisd -y
# systemctl enable stratisd
# systemctl start stratisd

# lsblk # list block device
# stratis pool create pool1 /dev/sdb # create new stratis pool pool1
# stratis pool list # show pools
# stratis pool add-data pool1 /dev/sdc

# stratis filesystem create pool1 fs1 # create new filesystem fs1 using pool1 (thin provisioned - 546MB)
# stratis filesystem list # show filesystems

# mkdir /bigdata
# mount /dev/stratis/pool1/fs1 /bigdata # get the fs name from stratis filesystem list

# lsblk # list block storages
# stratis filesystem list # show actual size

# stratis filesystem snapshot pool1 fs1 fs1-snap # take snapshot of a filesystem
# stratis filesystem list # show newly created snaps, size and UUID

# Note: Mount stratis fs on boot
# vi /etc/fstab
# UUID="3thb56sgdk78ds8dvshg" /bigdata xfs defaults,x-systemd.requires=stratisd.service 0 0


# df -T # get fs types
# fsck /dev/sdb1 # repair non xfs file system

# Warning: Before running xfs_repair unmount the file system
# umount /data # Copy the file system info of the /data mount point to mount it again later
# xfs_repair /dev/sdb1
# echo $? # get exist status of last cmd (0 -> success else fail)
