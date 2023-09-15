# Restart pc and hit esc in the boot menu and select the distro and hit 'e' to edit.
# find ro (read only) and remove it.
# add the following commands in place of ro
# rw init=/sysroot/bin/sh

# ctrl + x # will start computer in single mode

# chroot /sysroot
# passwd root
# (type and retype root pass)

# touch /.autorelabel

# exit

# reboot
