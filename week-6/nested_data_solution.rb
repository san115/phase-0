# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array = [5, [10, 15], [20,25,30], 35]
number_array.each do |element|
  if element.kind_of?(Array)
    element.map! {|inner| p inner + 5}
  end
end
# used destructive map! to modify the array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Reflect:
# What are some general rules you can apply to nested arrays? When identifying specific elements in nested 
# arrays, need to figure out the amount of layers/level of nesting in the array, then identify the position 
# of the specific element using the index for each layer of the array. For nested hashes, need to figure out 
# the amount to layers/levels of nesting and then identify whether the target element is key or value within
# each layer, then identify the key for each layer.  For mixed nesting, follow the rules for each layer and 
# then apply layering rule for hash or array conventions for each layer.
# What are some ways you can iterate over nested arrays? To iterate over nested arrays, can use the each 
# method to review the elements in the array and then use the kind_of? method to look for sub-arrays.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What 
# was it and why did you decide that was a good option? I tried the map! method to modify the sub-array 
# elements.





