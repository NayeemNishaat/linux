# GREP
# grep abc file # find abc in file
# grep -c it file # will just return the count
# grep -i abc file # ignore case
# grep -in it file # return result with line number
# grep -v it file get all the lines where 'it' doesn't exist
# grep -ivn it file | awk '{print $1}' # get first col and all rows of grep
# grep -ivn it file | awk 'FNR==1 {print}' # get first row and all cols of grep
# grep -ivn it file | awk 'FNR==1 {print $2}' # 1st row 2nd col
# grep -ivn it file | awk 'FNR==1 {print $0}' | cut -c 3- # grep it awk it and cut it from 3 to end
# ll | grep file$ # return lines where the lines contain words that end with file
# grep -o it file
# dscacheutil -q user | grep -A 3 -B 2 -e uid:\ 5'[0-9][0-9]' # -A 3 -> display after 3 lines, -B 2 -> display before 2 lines

# EGREP
# Note: Used for searching multiple words
# egrep -i "it|abc" file # will search it and abc
