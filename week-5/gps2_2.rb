# Psuedocode
# for a new list:
# input need a new list
# output: create a container with items and quatity
# create method/name for new list

  new_list = Hash.new(0)
  
# adding to new list:
#   input add item and quantity
#   output: get a list with item and quantity
# create method that accepts string and integer and add string as key and integer as value to list
def list_add(food, quantity, list)
  list[food] = quantity
#   puts list
end

# remove item
#   input: item to remove
#   output: remove item and quantity from list
# create method that accepts string and look for it inside the lst and delete it
def list_remove(food, list)
  list.reject! { |key| key == food }
#   puts list
end
  
# update quantity
#   input: item on the list
#   output: change quantity for item
# create method that accepts string and put the new value for the string in the list
def list_update(food, quantity, list)
  list[food] = quantity
#   puts list
end
    
# print list:
#   input: list
#   output: prettier list
# create method that iterates to put each key and value on the same line to make a list
def list_show(list)
  list.each do | key, value |
    puts "#{key}: #{value}"
  end
end

list_add("Lemonade", 2, new_list)
list_add("Tomatoes", 3, new_list)
list_add("Onions", 1, new_list)
list_add("Ice Cream", 4, new_list)
list_remove("Lemonade", new_list)
list_update("Ice Cream", 1, new_list)
list_show(new_list)

# Reflect:
# What did you learn about pseudocode from working on this challenge? Going through the steps of pseudocode helped to idenitfy the 
# output and the steps needed to achieve the output for each method when writing the actual code.

# What are the tradeoffs of using Arrays and Hashes for this challenge? It seemed more practical to use a hash rather than an array 
# for this challenge since we were working with data that have corresponding values, types of food and their quantities, that fit well 
# with the key-value organization of hashes, so making adjustmets, such as deleting or updating, can be done by caling up the key.
# It would have been possible to also use arrays, perhaps a two-dimensional array, but that would have required adjusting each element.

# What does a method return? A method returns the output(s) from operations that use arguments at given parameters.

# What kind of things can you pass into methods as arguments? Argurments are iformation that the method will use to 
# return a result. 

# How can you pass information between methods? Information can be passed between methods through arguments that come from the same source,
# In this case, we used the hash as a parameter to be called in to the argument list for each method.

# What concepts were solidified in this challenge, and what concepts are still confusing? I learned more about how information gets 
# passed through parameters and arguments, which I now realize was something that I had been confused about. And I was reminded that 
# local variables doe not work outside of the method.
