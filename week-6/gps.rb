# Your Names
# 1) Un Choi
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, order_quantity)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end
#   # Doesn't seem like the if statement for library.each do does anything. It looks incorrect if meant to compare
  # the value in the library hash with item_to_make--need to declare value in variables for the each loop. In the 
  # end, this block of code just counts down the error_counter by increment of 1, but should be meant to calculate
  # for error? for when the key in the library (library[food]) does not match the item_to_make?

  
  # if error_counter > 0
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end
  # This section would stop the program and send an error message if there is an error--that the tiem_to_make 
  # doesn't match a key in the library hash.
 
#   serving_size = library.values_at(item_to_make)[0]
#   # The above line extracts the amount of serving size that is currently in the library as value for the 
#   # key(item_to_make) 
#   serving_size_mod = order_quantity % serving_size
#   # The above line calculates the serving size to be modified by figuring out how much ingredients would 
#   # be leftover when divide the quantity for the order by the existing amount of serving size

#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   # The above sends notice when there is no leftover (serving_size_mod == 0) that there is enough ingredients to make
#   # the food item to make the order quantity
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   # The above sends notice when there is leftover (serving_size_mod > 0) ingredients after making the order quantity
#   # and gives notice to do something else with the leftover 
#   end
# end

# Refactored:

# Refactored to below. replaced each with each_key method to compare keys in the hash and deleted the p fo print
  # error counter. And, since this now compares the key, change error_counter to 2, as the purpose of the each_key is
  # to look for a match in the library hash:
   
def serving_size_calc(item_to_make, order_quantity)
  stock = {"cookie" => 1, "cake" =>  5, "pie" => 7}
 
  stock.each_key do |key, value|  
    stock.has_key?(item_to_make)
    if false
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end
  end

  serving_size = stock[item_to_make]
  serving_size_mod = order_quantity % serving_size

if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
elsif serving_size_mod >= 1 
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: #{order_quantity - serving_size_mod} cookies"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge? Having a readable code makes it  much
# easier to figure out the purpose/output of the code and the operations it performs. Also, making a code readable helps
# to cut out redundancy and unnecessary bits of code.

# Did you learn any new methods? What did you learn about them? I learned the each_key that allows for iteration of hash
# through the key.

# What did you learn about accessing data in hashes?  I learned to iterate a hash using the key or value through
 # each_key, each_value, and each_pair methods.
# What concepts were solidified when working through this challenge? I appreciated the use of p to help me figure out
# how a particular operation or method works.
