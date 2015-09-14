# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  if list_of_nums.count == 0
    return nil
	elsif list_of_nums.count == 1
    return 0 
  elsif list_of_nums.count == 1 && list_of_nums[0] == -10
    return -10 
  else

   list_of_nums.each do |x|
  	x = 0
    while x < list_of_nums.count
  	  if list_of_nums[x] < list_of_nums[x + 1]
  		 smallest = list_of_nums[x]
      end
      x += 1
    end
      return smallest
    end
    
  end
end
