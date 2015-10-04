# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#solution.rb
# 2. What is the line number where the error occurs?
#line 12
# 3. What is the type of error message?
# unexpected end-of-input; 
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword en-
# 5. Where is the error in the code?
# at line with "end"
# 6. Why did the interpreter give you this error?
# need "end" for "while" loop

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# line 35
# 2. What is the type of error message?
# syntax error
# 3. What additional information does the interpreter provide about this type of error?
# unexpected unary-, expecting keyword_do or '{' or '('
# 4. Where is the error in the code?
# line with "south_park"
# 5. Why did the interpreter give you this error?
# does not define "south_park" as either a method argument or block of code

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#line 58
# 2. What is the type of error message?
# syntax error
# 3. What additional information does the interpreter provide about this type of error?
#unexpected unary-, expecting keyword_do or '{' or '('
# 4. Where is the error in the code?
#empty parentheses
# 5. Why did the interpreter give you this error?
#nothing is identified as an argument

 # --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# lines 65 and 69
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# method "cartmans_phrase" is defined without an argument but the method is called
# with an argument
# 5. Why did the interpreter give you this error?
# method does not have an argument, but the method is called with an argument

 # --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# lines 85 and 89
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# the method "cartman_says" is defined with an argument, but when method is called 
# without an argument
# 5. Why did the interpreter give you this error?
# the method has an argument, but gets called without one



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# lines 107 and 111
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# method "cartmans_lie" is defined with 2 arguments, but when it is called with only 1 argument
# 5. Why did the interpreter give you this error?
# mehod requires 2 arguments, but when called only 1 argument is provided

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# line 126
# 2. What is the type of error message?
# Type error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# code calls for a number to be multiplied by a string
# 5. Why did the interpreter give you this error?
# can't multiply number with text string

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# line 141
# 2. What is the type of error message?
# zero division error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# code requires 20 to be divided by 0
# 5. Why did the interpreter give you this error?
# can't divide by 0

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#line 157
# 2. What is the type of error message?
#Load error
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file
# 4. Where is the error in the code?
# code calls for file that does not appear in a location
# 5. Why did the interpreter give you this error?
# cannot access file in the location


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# The most difficult to read was the syntax error/unexpected unary-. I had to
# look up the error to get an idea of what it was about. I tend to fear errors, as
# up to now, I've never attempted to deal with them. This exercise has made me see
# that they don't need to be feared and instead, they can be helpful in pointing
# out mistakes in the codes when learning to read them.




