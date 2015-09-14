# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
	if number == 0 || number == 1
     return 1
  end
   product = 1
   while number > 2	
	   var = number * (number - 1)
       product = product * var
	   number -= 1
   end
   return product
end



#

 