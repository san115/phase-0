# Initial Input: Grocery item and quantity, 
# Initial Output: list of items with quantity 
# 
#
# Input: Item, quantity
# Output: updated list
#
# 
# Input: Item
# Output: Item deleted from the list
# IF input is equal to a food item in list, remove food from list
#
# Input: Quantity
# Output: Updated quantity for list
# 
#
# Output: Print list

def grocery_list(food, quantity)
  groceries = Hash.new
  groceries[food] = quantity
  p groceries
end

def new_item(list, food, quantity)
  list[food] = quantity
  puts list
end

def delete_item(list, food)
  list.delete(food)
  puts list
end

def update_total(list, food, quantity) 
  list[food] = quantity
  puts list
end

def print_list(list)
  list.each do |key, value|
    puts "#{key}: #{value}"
  end
end

list = grocery_list("Lemonade", 2)
new_item(list, "Tomatoes", 3)
new_item(list, "Onions", 1)
new_item(list, "Ice Cream", 2)
delete_item(list, "Lemonade")
update_total(list, "Ice Cream", 1)
print_list(list)

# Reflection
# What did you learn about pseudocode from working on this challenge? Writing pseudocode helps to break down and figure out the necessary steps that will be needed to write the codes.
# What are the tradeoffs of using Arrays and Hashes for this challenge? For this challenge, we used a hash, since we were working with food items and quantities associated with them.
# For methods that required changes or printing the list, using a hash was easier, as changes are applied to the key-value
# association. While it would have been possible to use an array, but that would have required keeping track of and updating 
# each piece of information as arrays lack the key-value relationship.
# What does a method return? the result of the operation conducted with the arguments
# What kind of things can you pass into methods as arguments? variables that contain strings or numbers and also data structures such as arrays and hashes
# How can you pass information between methods? information can pass between methods as arguments
# What concepts were solidified in this challenge, and what concepts are still confusing? I learned that you can assign methods to variables, just like objects 
