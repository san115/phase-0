# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a number
# What is the output? (i.e. What should the code return?) show the number with
# comma(s) at the correct position(s). If the number has 3 or less digits, then
# show the original number
# What are the steps needed to solve the problem?
# --figure out the amount of numbers and divide by 3 to get the amount of commas
# the number needs
# --from the last digit of the number, insert comma after every third digit until
# to the end of the digit


# 1. Initial Solution
#  this code works only for 6 or less digits. Couldn't figure out how to put into loop for numbers
#  digits longer than 6.

def separate_comma(num)
  
    comma = num.to_s.size
    if comma == 0 || comma <= 3
      puts num.to_s
    else
      convert = num.to_s.size
      x = convert.to_i / 3
      y = 0
      while y < x
        y += 1
        new = num.to_s.insert(y * -4, ',')
        puts new
      end
    end
  
end


separate_comma(0)
separate_comma(100)
separate_comma(1000)
separate_comma(1000000)



# 2. Refactored Solution
def separate_comma(num) 
    comma = num.to_s.size
    if comma == 0 || comma <= 3
      puts num.to_s
    else
      x = comma.to_i / 3
      y = 0
      while y < x && (y * 4) <= (comma + y)
        y += 1
        new = num.to_s.insert(y * -4, ',')
      end
      puts new
    end 
end


 

# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I started with figuring out ow many commaa are needed for the digit. So, anaylze the digit as a string which
# and then figure out the length of it. Then divide by 3, to figur out the number ot comma needed to insert in
# the number. For numbers that need more than 1 comma, my attempt was to set in a loop, which I wasn't able to do.

# Was your pseudocode effective in helping you build a successful initial solution? It was helpful in eetting me started
# on figuring out the strategy for the problem.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? 
# Did it/they significantly change the way your code works? If so, how? I decided to use the insert method, which was
# successful only up to a certain amount of digits. I was not able to figure out how to set the inserting in a loop for
# numbers that require more than one commma. 

# How did you initially iterate through the data structure? Not very well. My thought was to use insert method 
# after every digits, beginning from the last digit, so in increments of 4> however,the result of my code wast that
# it inserts comma only once and does not preserve any previous comma inserted. Does this have to do with destructive 
# and non-destructive method?

# Do you feel your refactored solution is more readable than your initial solution? Why? A little bit, I replaced
# redundant expressions, but did not find any methods that would replace the existing strategy in the conding, that is 
# can replace with other methods, but then I would no longer be using the strategy I had for this.
