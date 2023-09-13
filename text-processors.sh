# CUT
# cut -c1 file # get first char of each line
# cut -c1,4,3 file # pick chars from each line of the specified position
# cut -c1-6 file # get the range of chars
# cut -c1-2 -c7-8 file # get the range of chars
# cut -c1-2,7-8 file # Same as above cmd
# cut -b1-3 file # list by byte size (each char is 1 byte by def)
# cut -d: -f 6 /etc/passwd # get the 6th column where delimiter is ':' of the file passwd
# cut -d: -f 6-7 /etc/passwd # get the 6-7 column
# ll | cut -c2-4
# ll | cut -d ' '  -f 2 # space delimiter
# ll | cut -d$'\t'  -f 1 # tab delimiter (Press Ctrl+V and then Tab to use "verbatim" quoted insert.)
# ll | cut -f 1 # tab is default

# AWK
# awk '{print $1}' file # get first word
# ll | awk '{print $1,$9}' # print 1st and 9th cols of the output of ll
# ll | awk '{print $NF}' # get last col
# ll | awk 'FNR > 1 {print $NF}' # get last col for rows > 1 other ops are =,< etc.
# awk '/it/' file # fint 'it' in file
# awk '/it/ {print $1}' file
# awk -F: '{print $7}' /etc/passwd # delimiter ':'
# echo "Hello tom" | awk '{$2="Adm"; print $0}' # replace tom with Adm and print
# echo "Hello tom" | awk '{$2="Adm"; print}' # replace tom with Adm and print
# cat file | awk '{$1="DARN"; print $0}' # take output from cat and process it
# awk 'length($0) > 15' file # get lines that have more than 15 bytes
# ll | awk '{if($9=="file")print $0}' # get rows where col 9 matches 'file'
# ll | awk '{print NF}' # will retun # of cols in each row

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

# SORT
# sort file # sort the file alphabeticaly
# sort -r file # sort in reverse order
# sort -k 2 file # sort using 2nd col
# ll | sort -k9

# UNIQ
# Warining: use sort first and pipe it to uniq to make it work
# sort file | uniq
# sort file | uniq -c # uniq with duplicate count
# sort file | uniq -d # show only repeated lines
# ll | sort | uniq

# WC
# wc file # will return # of lines, # of words, # of bytes and file name
# wc -l file # only return # of lines and file name (-w for words and -c for bytes)
# ll | wc -l # count lines in ll
# ll | grep d | wc -l

# DIFF
# diff file1 file2 # find difference in file1 and file2

# CMP
# cmp file1 file2 # compare file1 and file2
