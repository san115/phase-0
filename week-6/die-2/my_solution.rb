# Die Class 2: Arbitrary Symbols
# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: when Die#roll is called, returns one of the strings. If Die.new 
#   passes empty array, raise ArgumentError
# Steps:


# Initial Solution
class Die
  def initialize(labels)
    @labels = labels
    if @labels.empty?
      raise ArgumentError.new("Array is empty.")
    end
    sides = @labels.length
  end

  def labels
    @labels
  end

  def sides
    sides = @labels.length
  end
  
  def assign
    sides
    for i in 1..sides
        @labels[i-1] 
    end
end

  def roll
    assign 
    x = rand(1..@labels.length)
    return @labels[x-1]
  end
end




# Refactored Solution
class Die
  def initialize(labels)
    @labels = labels
    if @labels.empty?
      raise ArgumentError.new("Array is empty.")
    end
  end

  def labels
    @labels
  end

  def sides
    sides = @labels.length
  end
  
  def assign
    sides
    for i in 1..sides
        @labels[i-1] 
    end
end

  def roll
    assign 
    x = rand(1..sides)
    return @labels[x-1]
  end
end

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation?
# The main difference is assigning labels per side and the output gave the label of the side when the roll method 
# gets called.
# Did you need to change much logic to get this to work? Not so much of a change in logic, but I had to figure out 
# how to get access to variables from method to method when they are not instance variables. I also figured out that one
# way to do this is to call up a method within a method.
# What does this exercise teach you about making code that is easily changeable or modifiable? I'm not sure what
# the question is asking, but the exercise pointed out that methods provide flexible way for information or tasks
# to be called upon point of use.
# What new methods did you learn when working on this challenge, if any? I used .empty? method and tried using the 
# for loop for the first time.
# What concepts about classes were you able to solidify in this challenge? I realized that the structure of classes 
# and the ways of calling methods allow for a way to get tailored information or tasks done by calling on the specific
# methods one needs. In this case, one can get the result of a roll by calling on the roll method or the amount of 
# sides by calling on the sides methods, or get the sides and the labels by calling on sides and assign methods.




