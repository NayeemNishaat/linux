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

# PASTE
# echo "12\n3" | paste -sd+ - | bc
