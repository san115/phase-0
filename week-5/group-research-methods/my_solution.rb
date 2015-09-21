# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.grep(/#{thing_to_find}/)
end

p my_array_finding_method(i_want_pets, "t")


def my_hash_finding_method(source, thing_to_find)

  new_array = source.select {|k, v| v == thing_to_find}.keys
end

p my_hash_finding_method(my_family_pets_ages, 3)

# # Identify and describe the Ruby method(s) you implemented.
# # For the first part, finding items in an array, I knew I wanted to grep. I first wrote in a string directly into the parantheses on line 10, to test out if it work and it did. The trickier part was figuring out how to put thing_to_find. I couldn't get it to work and finally decided to ask a question on Stack Overflow. Someone there told me that I needed to use interpolation to allow code to appear within a string. That will be really helpful in the future.
# #For the second part I was able to use lessons from 5.3 to figure out how to push the results (all of the results, not just the first one) into an array. Withiout new_array in front the results are returned as individual objects, not just as an array. Adding .keys at the end of the code block says that I want just the keys, not the values or pairs. .select will create a new hash, but then .keys at the end seems to override pulling both key/value and new_array pushes it into an array. 
# #

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.collect! do |x| 
    if x.is_a?(Integer) 
      x+=thing_to_modify
    else x
    end
  end


end
def my_hash_modification_method!(source, thing_to_modify)
  source.each{|key,value| source[key] = value+thing_to_modify}
end

# Identify and describe the Ruby method(s) you implemented.
# I used #collect! to iterate through the array to alter its contents. 
# Since the method has to be destructuve, I added the "!" at the end of "collect".
# I used #is_a? to check if each element in the array is an integer.
# This method returns true if the element is an integer, in which case "thing_to_modify" will be added to it.
# I used #each to iterate through the hash to modify the values. The
# values can be changed by accessing the key through "source[key] =".
#


# Person 3
def my_array_sorting_method(source)
  source.sort_by { |x| x.to_s }
end

def my_hash_sorting_method(source)
   source.sort_by {|_key, value| value}
end

# Identify and describe the Ruby method(s) you implemented.
# For the array, I used the sort_by method with a block that applies the "to_s"
# each element in they array, which sets the elements as a string. Then the strings
# get ordered.
# I also used sort_by method for the hash and identifying value to be the data to be # 
# used for ordering.
#


# Person 4

def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|item| item.to_s.include?(thing_to_delete)}
end
p my_array_deletion_method!(["cat", "dog", "iguana", "shoe"], "o")

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|name, age| name.include?(thing_to_delete)}
end

# PERSON 4 REFLECTION:
# Identify and describe the Ruby method you implemented
# Teach your accountability group how to use the methods
# Share any tricks you used to find and decipher the Ruby Docs
# # # I utilized delete_if and include? methods.  delete_if removes the element (if an array) 
# or the key/value pair (if a hash) for whom the condition in a block is true and returns the modified array (or hash).
# # #For example, in English, I'd say delete from this array any item for whom the statemnet in the  block is true.  
# In my solution, each element is being evaluated as to whether it includes the thing to delete.  In the hash, I asked 
# it to evaluate whether the key includes the thing to delete, though I could have asked it to evaluate the value instead.

# Include? evaluates whether a string (in this case) includes the thing to delete (ex. 'a' in 'cat'). 

#   This felt like the most successful time I have been able to utilize Ruby Docs.  First I wrote my pseudocode.  
#   Then I went back through the items in my pseudocode and thought of the methods that could accomplish those things.  
#   Then I went to Ruby Docs and scrolled down the list to see if there was anything that sounded like it could perform that function.  Then I read about each function.


#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#