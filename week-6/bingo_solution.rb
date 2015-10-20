# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a random letter from letters b, i, n, g, o and a random number from 1-100:
# assign the letters b, i, n, g, and o to each number in the subarray:
  #--set up a loop to iterate x as the first index nd y as the second index number for the nested array
  #--assign each letter to the x index so that all the frist number in the nested array gets assigned b, and so on 
# compare the called letter and number with numbers in the nested array
# If the number is in the column, replace with an 'x'
  #--if letter and number match, replace number with X
# Display a column to the console
  #print out the updated column
# Display the board to the console (prettily)
  #print out all the updated columns

# Initial Solution--The code has a couple of issues bu tnot sure how to solve them. Errors appear 
# for assi_letter_number method

class BingoBoard

  def initialize(board)
    @bingo_board = board 
  end

  def call_bingo_number             
    letter = "bingo".to_s
    call_letter = rand(0..letter.to_s.length)
    number = rand(1..100)
    call_number = letter[call_letter].to_s + number.to_s
  end
  
  def assign_letter_number
    letter = "bingo".to_s
    y = 0
    x = 0
    while y <= 4
      while x <= 4
        @bingo_board[x][y] = letter[y] + @bingo_board[x][y].to_s  
        x += 1
      end
      x = 0
      y += 1
    end  
  end

  def check_bingo_number
   call_bingo_number
    @bingo_board.each do |num|
      num.include?(call_number)
      num = "X".to_s
    end
  end

  def show_bingo_board
    @bingo_board.flatten!
    5.times do
       p @bingo_board.slice!(0..4)
    end
  end

end

# Refactored Solution
# I'm sure there must ways to simplify, but not sure where they might be. Also, The code has a couple of issues bu tnot sure how to solve them. Errors appear 
# for assi_letter_number method



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style? Pseudocoding wasn't too
# difficult, but I'm realizing that it's probably because I don't go into details as I should. While I can think up
# a general strategy to approach the task, I don't think about the finer details, so when time comes to write the code,
# I often feel lost about how to approach it. It may be that were I to be more thorough in the plaaning, ie pseudocoing 
# and think through the details, it may be easier to write the code.  
# What are the benefits of using a class for this challenge? The methods in a class provides a specific task and they can 
# be called from outside of the class as needed. So, in this case, the method to call the bingo number can be called repeatedly
# until someone gets a match on their bingo board, instead of having to go through all the steps before calling a new bingo number.
# How can you access coordinates in a nested array? For nested arrays, the index has an additional number to indicate the
# position in the nested array. For example, an array with [1, [2, 3]], to access "3", the index needs spcify that it is the second
# elemnt of the nested array in the second element, so the index would show [1][1].
# What methods did you use to access and modify the array? I used nested while loops to add letters b,i,n,g,o to the numbers
# of the array. I also used each method to iterate and searching, using .includ? method, to match the bingo number that gets called. I also used
# flatten and slice methods to display the bingo board neatly, but not sure how successful they are.
# How did you determine what should be an instance variable versus a local variable? I considered setting the bingo number as 
# an instance variable in addition to the board, but decided to keep just the board as instance variable. Setting the call number
# as instance variable would have meant providing arguments for when methods that use the call numbers are called. This seems to 
# defeat the purpose of the codes, which is to generate a random number, not accep a random number. 
# What do you feel is most improved in your refactored solution? I didn't refactor as I still have couple of errors that I
# hadn't been able to solve.  
