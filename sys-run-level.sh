init o -> shut down/halt
init 1 -> single user mode
init -s -> single user mode
init 6 -> reboot
init 2 -> multiuser mode without networking
init 3 -> multiuser mode with networking but no gui
init 5 -> multiuser mode with networking and gui

# who -r # get run level
# systemctl set-default 3 # set default init lvl

vi /etc/motd # edit this to show startup message.
