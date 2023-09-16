# BASIC SCRIPT
# Remark: script must have executable permission to run.

#! /bin/bash

echo Hello
echo


# VARIABLE
#!/bin/bash

a=Nayeem
b=Nishaat
x=’Nayeem Nishaat’ # space sensitive, don’t put spaces before/after x

echo "Hello $a $b"



#! /bin/bash

a='abc de'
echo What is your name?
read name
echo

echo "hello $name $a"


# TAKE USER INPUT
#! /bin/bash

a=`hostname` # hostname is the command
echo What is your name?
read name
echo

echo "hello $name $a"



# IF ELSE
#! /bin/bash

count=100

if [ $count -eq 100 ]
then
  echo count is 100
else
  echo count is not 100
fi



# IF ELSE IF
#! /bin/bash

count=100

if [ $count -eq 100 ]
then
  echo count is 100
else
  echo count is not 100
fi

if [ -e file  ]
then
  echo file exist
elif [ 1 ]
then
  echo 1
fi



# FOR LOOP
#! /bin/bash

for i in 1 2 nayeem 4 5 saymon
do
  echo number $i
done



#! /bin/bash

for i in {1..10} 
do
  echo number $i
done



# WHILE LOOP
#! /bin/bash

count=0

while [ $count -lt 10  ]
do
  echo $count sec
  sleep 1

count=`expr $count + 1`
done



# SWITCH CASE
#! /bin/bash

echo Choose an Option:
echo "a = Date Time?"
echo "b = Check Uptime?"
echo "c = List Users"
echo "d = List"
read -p "> " choice

case $choice in
  a) date;;
  b) uptime;;
  [cC]*) who;;
  d) ls;;
  *) echo Invalid Choice
esac
