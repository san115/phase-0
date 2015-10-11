# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array and the mininum size of the array
# What is the output? (i.e. What should the code return?) ran array with at least
# the minimum size of array with default value to fill the minimum size requirement if less
# than minimum size
# What are the steps needed to solve the problem? 
# -compare the size of array with minimum size:
# --if array size is bigger than or the same as minimum size, then return the array
# --if array size is smaller, than add value to the array, until the array size equals
# -- minimum size; value should be default value if none other is given or if given then
# -- as indicated
# --one method will destructive, meaning that the elements in the array will be changed
# --one method will be non-destructive, meaning that the elements in the array will not be
#   changed permantly


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size < array.length || min_size == array.length 
    return array
  else 
    x = min_size - array.length
    x.times do
      array.push(value)
    end
    return array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  if min_size < array.length || min_size == array.length 
    array = array.clone
    return array
  else
    array = array.clone
    x = min_size - array.length
    x.times do
      array.push(value)
    end
  return array
  end
end


# 3. Refactored Solution--made only one small adjustment; didn't find other
# ways to simplify
# 
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length 
    return array
  else 
    x = min_size - array.length
    x.times do
      array.push(value)
    end
    return array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  if min_size <= array.length
    array = array.clone
    return array
  else
    array = array.clone
    x = min_size - array.length
    x.times do
      array.push(value)
    end
  return array
  end
end

# 4. Reflection
# Were you successful in breaking the problem down into small steps? Yes, figured out that I can use the array length to
# compare with the minimum size, then by subtracting can figure out the amount of padding needed. Then just needed to set up
# a loop to pad the array.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# For the most part setting up the if/else statement and loop didn't take too long. However, figuring out how to create
# non-destructive method, while going through the same steps took much longer to figure out. Once I found the clone method, it
# took a while longer to figure out how to use it--in this case, declaring a clone of itself. 
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you 
# encountered and what did you do to resolve them?
# The errors I encountered had to do with no creating non-destructive method. It was the process of figuring out how to use clone
# method.
# When you refactored, did you find any existing methods in Ruby to clean up your code? I'm sure there are but I wasn't able to find them.
# How readable is your solution? Did you and your pair choose descriptive variable names? I think the soution is fairly readable. It probably
# could be shorter and more concise.
# What is the difference between destructive and non-destructive methods in your own words? Destructive methods alters the data or information, where as
# nondestructive methods creates changes just for the instance and does not create permanent change in the data or information.