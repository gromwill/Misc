=begin

Takes file in and splits the entire text into individual words

take those words and assign each new one to a string

count each time it occurs and assign an integer to keep track

print each word and its corresponding frequency 



def arraySeperator(word_array)




end




## Open the file

open_file = File.open('test.txt', 'r')

## Take the files content and store it

content = open_file.readlines

## Split the array of lines into words

line_count = content.count

itteration_count = 0

individual_words = Array.new

while itteration_count < line_count
	
	individual_words[itteration_count] = content[itteration_count].split

	itteration_count = itteration_count + 1

end

puts individual_words.inspect


puts individual_words[0][0]
=end

## Open the file
open_file = File.open('test.txt', 'r')


## Create a new Hash store the values
dictionary_hash = Hash.new


## Iterate through each line and collect the words
open_file.each_line { |lines|


	##split the lines into words
	individual_words = lines.split


	## Take the words and check how many times they have appeared by incrementing
	individual_words.each { |word|
		
		
		## use the has_key? function to give a true or false value to determine 
		## whether to increment or not
		if dictionary_hash.has_key?(word)
			
			dictionary_hash[word] = dictionary_hash[word] + 1

		else
	
			dictionary_hash[word] = 1

		end

	}

}


## print out each word and its corresponding frequency
dictionary_hash.each { |word_element|
	
	puts "#{word_element[0]} occures #{word_element[1]} times"

}
	
