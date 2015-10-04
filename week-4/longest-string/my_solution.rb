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
    return nil
  elsif list_of_words.count == 1
    return list_of_words[0]
  else
    x = 1
    longest = list_of_words[x]
    while x < list_of_words.count - 1
      list_of_words.each do |word|
        if word.to_s.length >= longest.to_s.length
          longest = word
        end
        x += 1
      end
    end  
    return longest
  end
end


# Refactor
def longest_string(list_of_words)
  p list_of_words.max_by { |x| x.length}
end