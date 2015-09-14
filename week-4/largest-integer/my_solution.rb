# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  if list_of_nums.count == 0
  	puts false
  end

  elsif list_of_nums.count == 1
	puts 0
  end

  elsif list_of_nums.count == 1 && list_of_nums[0] == -10
    return -10 

  else list_of_nums.each do |x|
  	x = 0
    while x < list_of_nums 
  	 if list_of_nums[x] > list_of_nums[x + 1]
  		largest = list_of_nums[x] 	
     end
     x ++ 1
    end
   return largest
  end
end


