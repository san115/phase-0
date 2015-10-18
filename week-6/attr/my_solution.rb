#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.


# Reflection
# Release 1:
# What are these methods doing? The methods change_my_age, change_my_name, and change_my_oppucation change 
# the values of the instance variables age, name, and occupation that were set at initialization

# How are they modifying or returning the value of instance variables? 
# The the original values for the instance variables get replaced by assigning the
# new values to the instance variables, each in its own method.

# Release 2:
# What changed between the last release and this release? Attribute  "attr_reader :age" was added; 
# what_is_age_method was commented out as it was no longer needed; instead of calling out method 
# what_is_age, call out using ".age": instead of instance_of_profile.whatt_is_name, use
# instance_of_profile.age

# What was replaced? what_is_age method was replaced with attribute: attr_reader: age

# Is this code simpler than the last? yes

# Release 3:
# What changed between the last release and this release? Added attribute "attr_writer :age"
#  deleted change_my_age method; the call to change_my_name changed to .age and new value: changed
# from "instance_of_profile.change_my_name" to "instance_of_profile.age = 28"

# What was replaced? Attribute "attr_writer :age" replaced change_my_age method; 
# instance_of_profile.change_my_name" replaced with "instance_of_profile.age = 28"

# Is this code simpler than the last? yes

# Release 4:
 
class Profile
# here is the change, we combined the attr_writer and attr_reader into one declaration: attr_accessor
  attr_accessor :age
  attr_accessor :name
  attr_accessor :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end
  end

instance_of_profile = Profile.new
puts "--- printing age -----"
sleep 0.8
p instance_of_profile.age

puts "--- printing name ----"
sleep 0.8
p instance_of_profile.name

puts "--- printing occupation ----"
sleep 0.8
p instance_of_profile.occupation

puts "--- changing profile information ----"
10.times do
  print "."
  sleep 0.1
end

instance_of_profile.age = 28
instance_of_profile.name = "Taylor"
instance_of_profile.occupation = "Rare Coins Trader"


puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info


# Release 5

class NameData
  attr_reader :name
  def name
    @name = "Un"
  end
end


class Greetings
  def initialize
    @nameData = NameData.new
  end
  
  def hello
    puts "Hello " + @nameData.name.to_s + "! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


# Release 6: Reflect
# What is a reader method? The reader attribute allows variabes to be accessed outside of the class without
# allowing it to be changed.
# What is a writer method? The writer attribule allows the values of variables to be changed outside of the class.
# What do the attr methods do for you? They allow access to variables outside of the class without having to write additional
# codeto access them. 
# Should you always use an accessor to cover your bases? Why or Why not? No, the accessor attribute allows both the 
# variables to be accessed and changed, so for the variables that should stay constant, the accessor attribute could
# allows for unintended errors. Depending on how the variables used, When using attributes, one should specify variables 
# as reader, writer, or accessor.
# What is confusing to you about these methods? So far, there isn't anything really confusing. Perhaps when 
# dealing with more complex codes?