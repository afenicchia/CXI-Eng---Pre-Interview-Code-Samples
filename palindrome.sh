#!/bin/bash
# This bash script is designed to take in a string and then return whether or not
# the string is a palindrome. This script must also follow these rules.
# 1 - Ignore any special characters
# 2 - Ignore character case
# 3 - Must allow numbers

#allow user for the string and store it in variable string
echo "Input: "
read string

#returns only alphanumeric characters in lower case
cleanString=${string//[^[:alnum:]]}
cleanString="${cleanString,,}"

#intialize i and grab the length of the final string
i=0
length=${#cleanString}

#get the mid value upto which the comparison would be done
mid=$(($length/2))

#while loop until mid point
while [ $i -lt $mid ]; do
	#check if the current letter is not the same as the inverse letter
	if [ "${cleanString:$i:1}" != "${cleanString:($length-$i)-1:1}" ]
		then
		#not a palindrome output and  exit program
		echo "Output: false"
		exit
	fi
	#increase initializer for next letter
	i=$(($i+1))
done

#otherwise we have a palindrome! 
echo "Output: true"
