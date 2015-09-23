# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: write a method for dice with 6 side that will be rolled
# Output: create a roll of the dice that will give a random number from 1-6
# Steps:
# --create a class with methods that will create a die with 6 sides
# --include a notice for error if the sides of the dice is less than 1 
# --create method in the class to generate a roll that will give a random result from 1-6


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
  end

  def sides
    @sides = 6 
    if @sides < 1
      raise ArgumentError, 'sides is less than 1'
    end
  end

  def roll
    roll = prng.rand(6) 
  end
end

die = Die.new(6)
die.sides


# 3. Refactored Solution
#  not sure what can be refactored


# 4. Reflection
# What is an ArgumentError and why would you use one? An ArgumentError happens when the arguments in the code is wrong, the
# information provided in the argument that gets called does not match up with the conditions of the argument. For example, if  
# two arguments get called out for a function that requires only one, or the argument is out of range.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them? I tried to use raise
#  to call an exception to notify for ArgumentError and the rand. Unfortunately, I don't think I succeeded
# What is a Ruby class? A Ruby class provide the features and functions for an object. It defines how the object acts and reacts, its set up or
# conditions in which it works, and so on. For example, one can use Ruby class for setting up accounts.

# Why would you use a Ruby class? Using a Ruby class for an object means that you can use the same class repeatedly for each time
# the object gets used. A Ruby class can also inherit information from a different class and then modify it to be passed down,
# inheritance from parent to child, which also is useful in cutting down on redundancy.
# 
# What is the difference between a local variable and an instance variable? Local variables are bound to the method in which they reside,
# whereas instance variables are bound within a class, so instance variables will function in different methods that are within the 
# class.
# Where can an instance variable be used? Instance variables can be used in methods that appear within a class.





















