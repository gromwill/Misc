poem_array = IO.readlines("poem.txt")

n = poem_array.count

while n > 0
	
	puts poem_array[n-1].reverse
	
	n = n - 1
end



















##https://ruby-doc.org/core-2.5.0/IO.html#method-c-readlines
