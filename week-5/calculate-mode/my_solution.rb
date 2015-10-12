# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array with strings or numbers as elements
# What is the output? (i.e. What should the code return?) return the most frequent value in the array
# What are the steps needed to solve the problem?
# --create a new hash that contains the element of the array as key and frequency of the element in the 
#   array as value
# --create a new array that contain the frequency for each element and sort by highest and lowest frequency
# --compare highest and lowest frequency--if both are equal, return all the elements otherwise return the elements 
# --with the highest frequency--including if there is more than one element with highest frequency



# 1. Initial Solution
def mode(array)
  frequency = Hash.new
  array.each do |x|
    array.count(x)
    frequency[x] = array.count(x)
  end

  most_frequent = Array.new
  max = frequency.max_by { |x, y| y}
  min = frequency.min_by { |x, y| y}
  if min == max
    frequency.each do |x,y| 
      most_frequent = most_frequent.push(x)
    end
  else
    most_frequent[0] = max[0]
  end
  return most_frequent
end


# 3. Refactored Solution
def mode(array)
  frequency = Hash.new
  array.each do |x|
    frequency[x] = array.count(x)
  end

  most_frequent = Array.new
  max = frequency.max_by { |x, y| y}
  min = frequency.min_by { |x, y| y}
  if min == max
    frequency.each do |x,y| 
      most_frequent.push(x)
    end
  else
    most_frequent[0] = max[0]
  end
  return most_frequent
end



# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# What issues/successes did you run into when translating your pseudocode to code?
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# Which data structure did you and your pair decide to implement and why? Put the information from the array into a
# a hash, as was mentioned in the hint. Took the frequency ofthe numbers in the array and then set key as the number
# and frequency as value. The looked for the value that was the greatest in the hash.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? About
# the same level of breakdown. Constructed a plan to find the frequency of numbers and then put the data into a hash.
# Then look for the biggest valued in each instance of hash.
# What issues/successes did you run into when translating your pseudocode to code? It took a while to figure out the
# syntax for setting up inputting the number and frequency from an array into a new hash.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were 
# they difficult to implement? I used each method to iterate. It seemed to be the best way as the plan was to import 
# each piece of information into a new collection.
