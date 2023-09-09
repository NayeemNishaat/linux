 # sed 's/Ais/is/' new # substitute once
 #  sed 's/Ais/is/g' new # substitute all
 # sed -i 's/Ais/is/g' new # make change to the original file
 # sed -ie '/match word/d' file # 
 # sed 's/word//' file # remove word
 # sed '/word/d' file # delete the line matching word
 # sed '/^$/d' file # delete empty line
 # sed '1d' file # delete 1st line
 # sed '1,4d' file # delete 1 to 4 lines
 # sed 's/\t//g' file # replace tab globally
 # sed 's/ /\t/g' file # replace space with tab
 # sed -n 3,5p file # pick lines 3 to 5
 # sed 3,5d file # delete lines 3 to 5
 # sed G file # insert new lines after each line
 # sed '2!s/lol/L/g' file # replace all lol with L except in line number 2
