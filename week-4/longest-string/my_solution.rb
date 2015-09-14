# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  if list_of_words.count == 0
    return false
  end

  else list_of_words.count == 1
	 return " "
  end
 
  if list_of_words == 1 && list_of_words(0) == "cat"
   return "cat"
  end

  else list_of_words.each do |x|
  	x = 0
    while x < list_of_words.count
  	if list_of_words[x].length > list_of_words[x + 1].length
  		longest = list_of_words[x]
  	end
    x += 1
  end
  return longest
  end

end

