# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: John Polhill].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: numbers in an array
# Output: give the sum of all the numbers in an array
# Steps to solve the problem.



# 1. total initial solution
# sum = 0

# iterate each number inside the array

# return total sum

def total(num_list)
  result = 0
  for i in 0..num_list.length
    result += num_list[i].to_f
  end
  
  return result
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: add up the numbers in an array
# Output: the sum of all the numbers in an array
# Steps to solve the problem.
# do an each loop on the arraryto add up each number


def sentence_maker(list)
  result = ""
  for i in 0..list.length - 1
    if i == list.length - 1
      result += list[i].to_s
    else
      result += list[i].to_s + " "
    end
  end
   
  result.capitalize!
  result += "."
  return result
end


# 6. sentence_maker refactored solution
# (numbers).reduce(:+)

def sentence_maker(list)
  return list.join(" ").capitalize! + "."
end



