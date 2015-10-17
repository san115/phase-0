# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
## # Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Steven Broderick, Un Choi].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16-digit integer
# Output: true or false
# Steps:

# define method initialize that takes one argument(card_number)
#  --convert card_number to string
#  --Set instance variable @card_number = card_number
#     IF card_number does not equal 16, raise ArgumentError

# define method double_every_other
# --from the second-to-last digit, double every other digit until the first digit
#   --enter digits in card_number to an array(card_number_array)
#   --set counter at 14
#   --set while loop--WHILE counter is greater than or equals to zero:
#       --double card_number_array at index[counter] 
#       --subtract 2 from counter
#   --return card_number_array

# define method sum_numbers(card_number_array)
# --sum all the doubled digits plus the remainder of the digits
# --for each number in card_number_array:
#   --IF number is greater than 9
#       --convert number to string and convert index 0 and index 1 to integer. Then add index 0 and index 1
#  --set variable sum equal to the total sum of each number in the card_number_array 
#  --return sum


# define method check_card
# -- call sum_numbers on double_every_other
# --if the total sum_numbers is a multiple of 10, valid number so return true, else false




# Initial Solution
# class CreditCard
#   def initialize(card_number)
#     @card_number = card_number.to_s
    
#     if @card_number.length != 16
#       raise ArgumentError.new("Number does not have 16 digits")
#     end
#   end
  
#   def double_every_other
#     @card_number_array = @card_number.split(//)
    
#     counter = 14
#     while counter >= 0
#       @card_number_array[counter] = @card_number_array[counter].to_i * 2
#       counter -= 2
#     end
    
#     @card_number_array.map! { |number| number.to_i }
#   end
  
#   def sum_numbers(card_number_array)
#     sum = 0
    
#     card_number_array.map! do |number|
#       if number > 9
#         number = number.to_s[0].to_i + number.to_s[1].to_i
#       end
#       sum += number
#     end
    
#     sum
#   end
  
#   def check_card
#     sum = sum_numbers(double_every_other)
#     if sum % 10 == 0
#       true
#     else
#       false
#     end
#   end
# end

# Refactored Solution
class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s
    
    raise ArgumentError.new("Number does not have 16 digits") if @card_number.length != 16
  end

  def double_every_other
    @card_number_array = @card_number.split(//)

    counter = 14
    while counter >= 0
      @card_number_array[counter] = @card_number_array[counter].to_i * 2
      counter -= 2
    end 
    
    @card_number_array.map! { |number| number.to_i }
  end
  
  def sum_numbers(card_number_array)
    sum = 0
    
    card_number_array.map! do |number|
      if number > 9
        number = number.to_s[0].to_i + number.to_s[1].to_i
      end
      sum += number
    end
    
    sum
  end
  
  def check_card
    sum = sum_numbers(double_every_other)
    
    sum % 10 == 0
  end
end

# Reflection
# What was the most difficult part of this challenge for you and your pair? For the getmost part, we managed 
# to work out the assignment without too much difficulty. If there is one aspect that could use improvement, as my partner pointed out, 
# then we converted the digits using .to_s and .t0_i methods throughout, perhaps too many times than necessary. 
# What new methods did you find to help you when you refactored? I learned about the split and learned to use the map 
# method.
# What concepts or learnings were you able to solidify in this challenge? The challenge reminded me about the use of 
# destructive vs. nondestructive methods, each vs. map, and the structure of class and the methods within the 
# class and ways to call.
