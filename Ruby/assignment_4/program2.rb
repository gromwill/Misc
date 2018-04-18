poem_array = IO.readlines("poem.txt".chomp)

n = poem_array.count

while n > 0


	line_array = poem_array[n-1].split.reverse

	puts line_array.join(" ")

	n = n - 1


end	


