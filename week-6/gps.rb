# Your Names
# 1) Un Choi
# 2) Peter Wiebe

# We spent [1.25] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  # Library hash contains all baked goods that can be made
  inventory = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   # Check to see whether the item being requested is in the library
#   error_counter = 3
#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end
  # If the item requested is not in the library then raise an error
  if !inventory.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  # Match the item requested to the item in the library and calculate how many ingredients are left over
  serving_size = inventory[item_to_make]
  leftover = order_quantity % serving_size
  baked_goods = ""
  inventory.each do |key, value|
    if value <= leftover && leftover > 0
      baked_goods += " " + key + " " + (leftover/value).to_s
    end
  end
  # Return the number of servings that can be made and how many left over ingredients are available for other items
#   case serving_size_mod
#   when 0
  if leftover == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{leftover} leftover ingredients. Suggested baking items:#{baked_goods}"
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
# What did you learn about making code readable by working on this challenge? It helps to refactor so codes are brief and
# concise. Another would be to name variables that helps to describe the tasks being performed.
# Did you learn any new methods? What did you learn about them? I learned the has_key? and has_value? methods and that 
# by adding an exclamation point infront of the variable when calling a method with a question mark, which gives boolean
# values true or false, you can test for false statements.
# What did you learn about accessing data in hashes? I learned to check for key and value of a hash through the has_key? or has_value? methods.
# What concepts were solidified when working through this challenge? Refactoring is a useful way to improve the code and 
# it's best to make the code clear and concise to make them readable.

