# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? name and group assignment for new group list
# What is the output? new list with name and group to which the stduetns belong, with request to update
# one group that has too many students. Code is very simple
# steps:
# --create new hash with information ofs student names with group assigned
# --reassign student to a different group
# --list the has of students and group assignment
# --make a change for assignment and update the list

new_list = Hash.new(3)

def list_add(group, student, list)
  list[group] = student
end

def list_update(group, student, list)
  list[group] = student
end

def list_show(list)
  list.each do | x, y |
    puts "#{x}: #{y}"
  end
end

list_add("Jupiter", 1, new_list)
list_add("Ovi", 2, new_list)
list_add("Marcel", 2, new_list)
list_add("Adell", 3, new_list)
list_add("John", 2, new_list)
list_add("Kristie", 1, new_list)
list_add("Pamela", 3, new_list)
list_add("Mike", 3, new_list)
list_add("Dan", 1, new_list)
list_add("Kim", 2, new_list)
list_add("Celeste", 3, new_list)
list_add("Steve", 2, new_list)
puts "Jupiter wants to move to Group 2."
list_update("Jupiter", 2, new_list)
list_show(new_list)
puts "Now, there are too many students in group 2 and not enough in group 1. Please move one person to group 1. Which student do you want to move?"
move_student = gets.chomp
list_update(move_student, 1, new_list)
list_show(new_list)


# Reflection
# What was the most interesting and most difficult part of this challenge? Figuring out the strategy for the assignment
# was the most difficult. I felt at a loss, as there are so many ways to approach it. Finally, I decided
# to try to follow the model of the gps session to play around with calling methods, in basic ways, perhaps too basic?
# 
# Do you feel you are improving in your ability to write pseudocode and break the problem down? I think I'm more comfortable
# with the process, not sure that I'm getting better necessarily. the biggest for me is getting stuck while writing the codes
# and struggling to get unstuck.

# Was your approach for automating this task a good solution? What could have made it even better? It made sense to create 
# a hash to enter grouping information. Adding coes for exceptions and special conditions would have made this
# much better. As is, this is very basic.

# What data structure did you decide to store the accountability groups in and why? I used a hash since the assignment
# required creating group assignments. Using a hash makes it convenient to find the group for the students.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# Because this was very basic, I did notlearnew methods.