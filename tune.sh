# yum install tuned
# tuned-adm active # get active profile
# tuned-adm list # list available profile
# tuned-adm profile new_profile # change profile
# tuned-adm recommend # get recommendation
# tuned-adm off # turn off tuned daemon
# ps axo pid,comm,nice,cls --sort=-nice # show process with nice value

# nice -n -19 process_name # provide highest nice priority
# renice -n 15 process_id
