def dictionary_search(word, dictionary_arr)
  
  ## Set the middle value and the left and right values in order to determine the location of the word
  middle = dictionary_arr.length / 2
  lookRight = 0
  lookLeft = dictionary_arr.length - 1
  
  ## Check to see whether the value of the strings are the same
  ## if not move the middile value the right or left depending on the value
  while lookRight <= lookLeft
    if (word <=> dictionary_arr[middle].chomp) == 0
      return middle
      
    elsif (word <=> dictionary_arr[middle].chomp) == 1
      lookRight = middle + 1
      middle = (lookLeft + lookRight)/2
      
    elsif (word <=> dictionary_arr[middle].chomp) == -1
      lookLeft = middle - 1
      middle = (lookLeft + lookRight)/2
      
    end
  end
  return -1
end

## Put the values in the command line into variables
word = ARGV[0]

file_name = ARGV[1]

## Read the file that was given by the user on the command line
dictionary_array = IO.readlines(file_name)

line_found = dictionary_search(word, dictionary_array)

## The dictionary_search returns a integer value of the line
## the word was found on
if line_found > -1
  puts "The word is there at line #{line_found}"
  
else
  puts "The word is not there"
  
end



## Testing
=begin
array = ["apple", "pear", "orange", "guava", "lemon", "lime","pineapple"]

word = "pear"

bool = binary_search(word, array.sort)

if bool == true
  puts "The word is there"
  
else
  puts "The word is not there"
  
end
=end

## Resources:
## https://www.youtube.com/watch?v=ork0GTSTojA
## https://www.youtube.com/watch?v=OUP-F5Oeng8
## https://stackoverflow.com/questions/1020568/how-to-convert-a-string-to-lower-or-upper-case-in-ruby
