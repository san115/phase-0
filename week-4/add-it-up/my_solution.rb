# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: numbers in an array
# Output: give the sum of all the numbers in an array
# Steps to solve the problem.



# 1. total initial solution
# sum = 0

# iterate each number inside the array

# return total sum

# # 3. total refactored solution
def total(numbers)
 	sum = 0
 	numbers.each do |number|
 	sum = sum + number
    end
  return sum
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: add up the numbers in an array
# Output: the sum of all the numbers in an array
# Steps to solve the problem.
# do an each loop on the arraryto add up each number


# 5. sentence_maker initial solution
# def total(numbers)
#  	sum = 0
#  	numbers.each do |number|
#  	sum = sum + number
# end
# return sum
# end


# 6. sentence_maker refactored solution
# (numbers).reduce(:+)