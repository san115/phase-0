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
  if list_of_nums.empty?
    return nil
  elsif list_of_nums.count == 1
    return list_of_nums[0]
  else
    counter = 1
    while counter < (list_of_nums.size - 1)
      smallest = list_of_nums[counter]
      list_of_nums.each do |x|
      if x <= smallest     
        smallest = x
      end 
      counter += 1
    end 
    return smallest
    end
  end
end

# def smallest_integer(list_of_nums)
#   if list_of_nums.empty?
#     return nil
#   elsif list_of_nums.count == 1
#     return list_of_nums[0]
#   end

#   counter = 1
#   while counter < (list_of_nums.size - 1)
#     smallest = list_of_nums[counter]
#     list_of_nums.each do |x|
#       if x <= smallest     
#         smallest = x
#       end 
#     counter += 1
#    end 
#     return smallest
#   end
# end

# Refactor
def smallest_integer(list_of_nums)
  list_of_nums.sort!
  return list_of_nums[0]
end