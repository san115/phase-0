# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# # Your Solution Below
def array_concat(array_1, array_2)
  if array_1.length == 0 && array_2.length == 0
    return []
  else
    x = 1
    while x <= array_2.length
      array_2.each do |new_item|
      array_1.push(new_item)
      x += 1
      end
    end
    return array_1   
  end
end

# Refactor
def array_concat(array_1, array_2)
	concatenate = array_1 + array_2
	return concatenate
end