# Full name greeting: Write a program that asks for a person's first name, then middle, then last. 
# Finally, it should greet the person using their full name.

puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello, " + first_name + " " + middle_name + " " + last_name + "!. It\'s nice to meet you."


# Bigger, better favorite number: Write a program that asks for a person's favorite number. 
# Have your program add 1 to the number, and then suggest the result as a bigger and better number.
puts "What is your favorite number?"
favorite_number = gets.chomp.to_i
bigger_better_number = favorite_number + 1
puts favorite_number.to_s + " is a good number, but " + bigger_better_number.to_s + " is a bigger and better number, dont\'t you think?"

# How do you define a local variable?
# A local variable works within a mathod, so they are defined within the method. The can be defined when method is defined or inside the method.
# How do you define a method?
# A method is defined by a name and the local variables it uses.
# What is the difference between a local variable and a method?
# Local variables work within the method, and methods contain contain ways to perofme a task.
# How do you run a ruby program from the command line?
# By calling up the irb with the command "irb", one can run the ruby progea,
# How do you run an RSpec file from the command line?
# type "rspec [name of spec file]"
# What was confusing about this material? What made sense?
#So far, nothing is particularily confusing. 