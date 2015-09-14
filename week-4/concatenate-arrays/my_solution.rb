# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  if array_1.length == 0 && array_2.length == 0
  	return 2
  else
	concatenate = array_1 + array_2
	return concatenate
 end
end