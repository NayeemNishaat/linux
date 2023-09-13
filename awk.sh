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
