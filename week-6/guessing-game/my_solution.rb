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

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def answer
    @answer
  end

  def Guessing_Game_guess(number)
    @answer = 10
    if number.to_i > @answer
      guess = :high
      p guess
    elsif number.to_i < @answer
      guess = :low
      p guess
    else number.to_i == @answer
      guess = :correct
      p guess
    end
  end
    
  def Guessing_Game_solved?(guess)
    if guess == @answer
      p true    
    else  
      p false
    end
  end
  
end


game = GuessingGame.new(10)
game.Guessing_Game_guess(5)
game.Guessing_Game_solved?(5)



# Refactored Solution






# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# When should you use instance variables? What do they do for you?
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
