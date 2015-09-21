# Pad an Array

# I worked on this challenge [by myself, with: Kristie Chow ]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

## What is the input? An array and the minimum size of the array
# What is the output? (i.e. What should the code return?) An array with the number of elements equal to the minimum size (padding)
# What are the steps needed to solve the problem?
#1. Create two methods (pad and pad!) that accepts a minimum of two arguments each and an optional argument of what the array should be "padded" with
#2. Compare the size of the array with the specified minimum size
#3. If the size is not the same, then pad the array with either the default value (nil) or a specified value



# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  array.clone!
  if min_size < array.length || min_size == array.length 
    p array
  else 
    x = min_size - array.length
    x.times do
      array.push(value)
    end
    p array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  array.clone 
  if min_size < array.length || min_size == array.length 
    p array
  else
    x = min_size - array.length
    x.times do
      array.push(value)
    end
  p array
  end
end


pad!([1, 2, 3], 5, 'apple')
pad([1, 2, 3], 5, 'apple')

# 3. Refactored Solution
# The way we approached the solution, I'm not sure there is anything else to refactor. During the process of writing,
# the code, we made adjustments, however did not record them.


# 4. Reflection
# Were you successful in breaking the problem down into small steps? Yes, we reasoned that to approach the problem, we needed 
# to ompare the size of the array with the minimum size.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did 
# you have? It didn't take long to figure out the types of codes to use. We spent much more time over the details, such as
# typos.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors 
# you encountered and what did you do to resolve them? We spent a bit of time getting errors for when the minimum size was less
# than the array, but luckily, we reviewed the conditions given for the assignment and was able to fix it.
# When you refactored, did you find any existing methods in Ruby to clean up your code? We used push to pad/add to the array
# and the clone method to preserve an original version
# How readable is your solution? Did you and your pair choose descriptive variable names? We didn't use descriptive names for variables.
# What is the difference between destructive and non-destructive methods in your own words? The difference is that
# destructive permanently make changes to the object, where as non-destructive alters the state momentarily or for the given 
# instance. Hence, the use of "!" when destructive, as a warning that the object is going to change.



















