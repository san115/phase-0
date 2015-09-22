# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# an array of numbers or strings
# What is the output? (i.e. What should the code return?)
# show the number or item from the array that appears the most frequently
# IF all the numbers or items from array occur the same amount of fequency, then return all in the array
# What are the steps needed to solve the problem?
# show the number or item from the array that appears the most frequently
# 	--add up the frequency of each item in the array and return the item with the highest frequency
# IF all the numbers or items from array occur the same amount of fequency, then return all in the array
# 	--





# 1. Initial Solution
def mode(array)
  frequent = Hash.new
  array.each do |x|
    array.count(x)
    frequent[x] = array.count(x)
  end
  max = frequent.max_by { |x, y| x}
  p max
end

mode([1, 2, 3, 3])
mode ([4, 5, 0, 0])
mode([1.5, -1, 1, 1,5])
mode([1, 1, 2, 2])
mode([1, 2, 3])
mode(["who", "what", "where", "who"])

# 3. Refactored Solution
# I think I was refactoring as I was going along, but did not keep track of the changes.



# 4. Reflection
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

