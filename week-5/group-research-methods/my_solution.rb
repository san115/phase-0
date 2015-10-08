# r# Research Methods

# # I spent [] hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(i_want_pets)
  i_want_pets.sort_by { |element| element.to_s} # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(my_family_pets_ages)
  my_family_pets_ages.sort_by { |key, value| value } # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end


# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]
# p my_array_sorting_method(i_want_pets)

# my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
#   "Annabelle" => 0, "Ditto" => 3}
# p my_hash_sorting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
# I used the sort_by method for both the array and the hash. And since the description of Person 3 indicated that 
# the person did not want to modifiy the data but wanted to see what sorting the data would look like, the method is
# not destructive. 
# For the array, the sort_by, insted of sort, worked well, since it contains numbers and text as elements. The sort_by method allows 
# the type of sorting to be executedBy. So, by setting all the elements as string, then sorting could be executed.
# The sort_by meethod also worked for the hash, since it allows to set the conditions of the sort to values, rather than keys.


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
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