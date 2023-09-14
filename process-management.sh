# sleep 50 # wait for 50 sec
# ^z # this will stop and move the process to the background
# jobs # to see the background processes
# bg # to run the stopped process in the background
# fg # to pring the process in the foreground
# nohup sleep 100 & # this will run the process in the background and process will not stop if terminal is closed
# nohup sleep 500 > /dev/null 2>&1 & # this will run the process in the background and process will not stop if terminal is closed and all error and std out will be redirected to /dev/null
# nice -n 5 sleep 10 # give priority level 5 to sleep process (-20 to 19, lower means high priority)
# top
# ps
