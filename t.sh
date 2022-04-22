
: '
fn(){
    echo $1
} # Using multi-line comment!
fn "lol"
'

#if [[ "$1" == ab ]]; then
#echo "last"
#fi
#echo "$1"

#for name in {1..10}
#do
#echo $name
#echo $1
#done

#declare -a list=(Kazi Md. Yeakub Ali) # Also works without > 

#for name in "${list[@]}" # "" Is very important for declaring array elments with <space>
#do
#  echo $name
#done

#for databaseName in a b c d e f; do
#  echo $databaseName
#done

: '
echo -n "Enter the name of a country: "
read COUNTRY

echo -n "The official language of $COUNTRY is "

case $COUNTRY in

  Lithuania)
    echo -n "Lithuanian" # -n for printing next command/insertable in the same line.
    ;;

  Romania | Moldova)
    echo -n "Romanian"
    ;;

  Italy | "San Marino" | Switzerland | "Vatican City")
    echo -n "Italian"
    ;;

	Bangladesh)
	echo "Bengali" ;;

  *)
    echo -n "unknown"
    ;;
esac
'

# sleep 5  # Wait 5 seconds!


# sed -i 's/search_string/replace_string/' filename
# sed -i 's/You are stupid!//' test.sh


# While Loop
: '
valid=true
count=1
while [ $valid ]
do
echo $count
if [ $count -eq 5 ];
then
break
fi
((count++))
done
'

# Get arguments from command line
# echo "Total arguments : $#"
# echo $1 $2

# For writing number expression
# ((5*5))
# For string expression
# echo $[nt == nt]

# Get user input
# read -p "name: " name

# Wait for a process to finish
# wait process_id

# Get all process ID
# ps S

# Read File
while read line;
do echo $line;
done < t.txt

# Append at the end of the file
# echo Append Me >> text.txt


# dpkg --list
# sudo apt-get --purge remove sendmail

# Send Mail with Gmail via CURL
curl --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
  --mail-from 'from-email@gmail.com' \
  --mail-rcpt 'to-email@gmail.com' \
  --user 'from-email@gmail.com:YourPassword' \
  -T <(echo -e 'From: from-email@gmail.com\nTo: to-email@gmail.com\nSubject: Curl Test\n\nHello')

# Download File with CURL and save inside doc.txt
# curl https://wearenext.io>>doc.txt

# Find and return mathced search string
# grep -o "html" doc.txt
# egrep -wo 'th.[a-z]*' doc.txt ### With regex
# Replace on the fly and print
# cat t.txt | sed "s/ /<SPACE>/g"
# echo -e "text gh" | sed "s/ /<SPACE>/g"
# sed 's/\\n/ /g' res.txt

# Extract all links with positive lookbehind
# cat doc.txt | grep -Po '(?<=href=")[^"]*'

# Extract all links with including lookup string
# grep -Po '(<a href="[^ ]*">)*' doc.txt
