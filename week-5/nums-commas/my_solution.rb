## Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? positive integers
# What is the output? (i.e. What should the code return?) integer with the correct
# number of commas in place
# What are the steps needed to solve the problem?
# --figure out the number of digits in the integer
# --if number of digits is 3 or less, then return the number as is
# --if number of digits is greater than 3, divide the number of digits by 3 to figure out the amount 
# of commas the integer needs
# --figure out whether there is any remainder to use for placement of commas
# --if integer has no remainder, the amount of commas needed is quotient -1 (6-digit number needs 1 comma,
  #   9-digit number needs 2, etc.)
# --if there is remainder, the amount of comma needed equals quotient 
# --to insert comma, convert number to string then split to one digit, then count from the end, at -1 and
#    count backward from -1, so inset comma at increments of -4


# 1. Initial Solution

def separate_comma(num)
  new_num = num.to_s.split(//)
  num_of_comma = num.to_s.length / 3
  digits_before_comma = num.to_s.length % 3
  counter = 1
  
  if num.to_s.length <= 3
    return num.to_s
    
  elsif digits_before_comma != 0
    num_of_comma.times do
    new_num.insert(counter * -4, ",")
    counter += 1
      end
    return new_num.join("")
  
  elsif digits_before_comma == 0
    (num_of_comma - 1).times do
    new_num.insert(counter * -4, ",")
      counter += 1
      end
    return new_num.join("")
  end
end

# 2. Refactored Solution--didn't find other methods to use. I made a lot of changes but did not keep track of 
# them.
def separate_comma(num)
  new_num = num.to_s.chars
  num_of_comma = num.to_s.length / 3
  digits_before_comma = num.to_s.length % 3
  counter = -4
  
  if num.to_s.length <= 3
    return num.to_s
    
  elsif digits_before_comma != 0
    num_of_comma.times do
    new_num.insert(counter, ",")
    counter -= 4
      end
    return new_num.join("")
  
  elsif digits_before_comma == 0
    (num_of_comma - 1).times do
    new_num.insert(counter, ",")
      counter -= 4
      end
    return new_num.join("")
  end
end




# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider? 
# I followed the placement of commas: count from the end of the number and insert comma after every 3 
# digits. To do this, I divided the number of digits by 3 to get the number of commas needed. One 
# exception for this would be that for digits that have multiples of 3 its length, the commas needed 
# is one less. To add the commas, I converted the number into a string and then split them into individual digits. 
# Then I set up a loop that would insert a increments of -4 in the index  for as many commas as the 
# number requires. Instead of splitting up the string individually, I also thought about splitting 
# in groups of 3, but that didn’t seem much different.
# Was your pseudocode effective in helping you build a successful initial solution?
# It was helpful to pseudocode, since it got me to think about how to set up and execute the rules for adding
# commas.
# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have 
# implementing it/them? Did it/they significantly change the way your code works? If so, how? I used split, insert,
# and join methods to insert commas at designated positions from the last digit, based on the number of commas. The 
# difficulty I had was in realizing that I needed to set up a loop for inserting commas and then figuring out that it
# should be based on the amount of commas needed and finally that I needed to put the string back together.
# How did you initially iterate through the data structure? It was pretty much what you see, but I didn't have the join
# line, which ended up giving me results with only 1 comma. I think adding the join method enabled the code to keep each 
# addition of commas.
# Do you feel your refactored solution is more readable than your initial solution? Why? It's about the same
# I didn't keep track of the changes I was making while trying to get the code to work, so what you see basically
# the refactored code. 
