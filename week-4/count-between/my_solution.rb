# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
# Below code won't work, but not sure I understand the assignment.
def count_between(list_of_integers, lower_bound, upper_bound)
  if list_of_integers.length == 0
  	return 0
  end

  if upper_bound < lower_bound
  	return 0
  end

  list_of_integers.each do |x|
    x = 0
  	if list_of_integers[x] == lower_bound && list_of_integers ==upper_bound
  		return list_of_integers.count
    
    elsif list of integers[x] < lower_bound
    	return false
    elsif list_of_integers[x] > upper_bound
    	return false
    	x +=1
    end

def array_concat(array_1, array_2)
  if array_1.length == 0 && array_2.length == 0
  	return 2
  else
	concatenate = array_1 + array_2
	return concatenate
 end
end

def array_concat(array_1, array_2)
  if array_1.length == 0 && array_2.length == 0
  	return 2
  else
	concatenate = array_1 + array_2
	return concatenate
 end
end

d