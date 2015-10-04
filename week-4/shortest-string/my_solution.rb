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
    return nil
  elsif list_of_words.count == 1
    return list_of_words[0].to_s
  else 
    x = 1
    shortest = list_of_words[x]
    while x < (list_of_words.count - 1)
      list_of_words.each do |word|
        if word.to_s.length.to_i < shortest.to_s.length.to_i
          shortest = word
        end
        x += 1     
      end 
    end
  return shortest
  end
end

# Refactor
def shortest_string(list_of_words)
  p list_of_words.min_by { |x| x.length}
end

