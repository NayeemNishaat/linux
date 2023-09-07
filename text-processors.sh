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
# grep -i fuck file # ignore case
# grep -in it file # return result with line number
# grep -v it file get all the lines where 'it' doesn't exist
# grep -ivn it file | awk '{print $1}' # get first col and all rows of grep
# grep -ivn it file | awk 'FNR==1 {print}' # get first row and all cols of grep
