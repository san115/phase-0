# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array [1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |element|
  if element.kind_of?(Array)
    element.map {|inner| p inner + 5} 
  end
end
# The method mmap would be used as non-destructive

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]



# Reflect:
# What are some general rules you can apply to nested arrays? When identifying specific elements in nested arrays, 
# need to figiure out the amount of layers/level of nesting that is in the array, then identify the position of the
# element using the index for each layer of the array. For nested hashes, need to figure out the amount to layers/levels of nexting 
# and them identify whether the target element is key or value within each layer, then identify the key for each layer. 
# For mixed nesting, indicate following the rules for whether each layer is a hash or array and followin the identifying
# conventions for each layer.

# What are some ways you can iterate over nested arrays? To iterate over nested arrays, can use each to review all the 
# elements in the array and kind_of? to look for subarrays.
# 
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What 
# was it and why did you decide that was a good option? We tried the map method, which to me was somewhat familiar, in
# place of each to extract and manipulate the subarray elements. We chose map, as it functions as each and allows for 
# manipulation of the elements without being destructive, so the original array remains intact as is.




