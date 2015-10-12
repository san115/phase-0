# Pseudocode
# Input: name and group assignment for new group list
# Output: new list with name and group to which the stduetns belong, with request to update
# 	one group that has too many students. Code is very simple
# steps:
# --create new hash with information ofs student names with group assigned
# --reassign student to a different group
# --list the has of students and group assignment
# --make a change for assignment and update the list

def add(list, student,group)
  list[student] = group
end

def show(list)
  list.each do | x, y |
    puts "#{x}: #{y}"
  end
end

def sort(list)
  list.sort_by { |group, student| student}
end

def update(group, student, list)
  list[group] = student
end


list = Hash.new(3)
add(list, "Caroline", 1)
add(list, "Joshua", 2)
add(list, "Syerma", 2)
add(list, "Kristie", 3)
add(list, "Alexander", 2)
add(list, "Andrew", 1)
add(list, "Jacob", 3)
add(list, "Alex", 3)
add(list, "Steven", 1)
add(list, "Laura", 2)
add(list, "Danielle", 3)
add(list, "Celeste", 2)
show(list)
p sort(list)
update("Joshua", 2, list)
show(list)


# Reflection
# What was the most interesting and most difficult part of this challenge? Figuring out the strategy for the 
# assignment was the most difficult. In the end, I chose semthing very simple. 
#
# 
# Do you feel you are improving in your ability to write pseudocode and break the problem down? I think I'm 
# more comfortable with it.

# Was your approach for automating this task a good solution? What could have made it even better? My goals was to try
# out callin basic methods.

# What data structure did you decide to store the accountability groups in and why? I used a hash since the 
# assignment required creating group assignments. Using a hash makes it convenient to find the group for the 
# students.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# Because this was very basic, I did notlearnew methods.
