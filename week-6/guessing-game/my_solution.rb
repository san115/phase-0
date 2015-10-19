# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a number as a guess and the correct number
# Output: indicate whether the guess is high, low or correct when compared to the correct number; indicate
# whether the the game was solved
# Steps:
# --create a method to compare the guessing number with the correct number:
#   --if the guess is lower than the correct number, indicate low; 
#   --if guess is higher, indicate high; 
#   --if guess is correct, indicate correct
# --create a method to tell whether the guessing game was solved:
#   --true if solved; false if not solved
# 


# Initial Solution
# This code has some issues, but haven't figured out how to solved them.
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def answer
    @answer
  end

  def guess(number)

    if number.to_i > @answer
      guess = :high
    elsif number.to_i < @answer
      guess = :low
    else number.to_i == @answer
      guess = :correct
    end
  end
    
  def solved?
    guess = guess
    if guess == @answer
     true    
    else  
     false
    end
  end
  
end


# Refactored Solution
#This code still has some issues, so not yet at stage to refactor.

# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of 
# a real-world object? Instance variables and methods follow an established plan to get work done,
# which is similar to real-world objects, objects being a broad definition. Normally, real-life objects 
# follow an established patterns based on set conditions, the established patterns can be likened to methods and instance 
# variables could be likened to the set conditions.
# When should you use instance variables? What do they do for you? Instance variables are useful as they can
# be passed to any methods within a class. This is useful, since the variable only has to be defined once, insted
# of being defined at each use.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what 
# did you struggle with? As I understand it, flow control has to do with how information gets passed through operations, which can be
# things like loops or if/else type of conditions, or variables that gets passed from method to method. I think I do have trouble with it, 
# since I was not able to fix the code to access the latest attempt at the guess and return the result.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols? Symbols
# are fixed values, so they do not change. This is useful to provide an accurate return for the results.



