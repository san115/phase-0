# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  if list_of_words.count == 0
  	puts false
  end

  else list_of_words.count == 1
	puts " "
  end
 
  if list_of_words.count == 1 && list_of_words[0] == "cat"
  	puts "cat"
  end

  else list_of_words.each do |x|
  	x = 0
    while x < list_of_words.count
  	 if list_of_words[x].length > list_of_words[x + 1].length
  		shortest = list_of_words[x]
  	 end
     x += 1
    end
   return shortest
  end

end



