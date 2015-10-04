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
  if list_of_nums.empty?
    return nil
  elsif list_of_nums.count == 1
    return list_of_nums[0]
  else
  
  counter = 1
  while counter < list_of_nums.size - 1
    largest = list_of_nums[counter]
    list_of_nums.each do |x|
      if x >= largest
        largest = x
      end
      counter += 1
    end
    return largest
  end
  end
end


# Refactor
def largest_integer(list_of_nums)
  list_of_nums.sort!.reverse!
  return list_of_nums[0]
end


