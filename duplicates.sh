#!/bin/bashd
# This bash script is designed to take in a sentence and determine the word with
# the most duplicate letters and return that word. 

#allow user for the string and store it in variable string
echo "Input: "
read string

#initialize the topLetter variable
topLetter=0

#cylce through the words listed in string.
for word in $string; do
	#cycle through each letter of the alphabet
	for letter in {a..z}; do 

		#check the number of occurances for the current letter
		count=$(echo -n "$word" | grep -oi $letter | wc -l)
	
		#if that letter is greater than our top letter overwrite top letter and save that word	
		if [ $count -gt $topLetter ]; then
			topLetter=$count
			topWord=$word
		fi
	done
done

#Output our top word!
echo Output: $topWord
