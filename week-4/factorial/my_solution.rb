# Factorial

# I worked on this challenge [with: John Polhill].


# Your Solution Below
def factorial(number)
  return 1 if number == 0
  
  result = 1
  while number > 1
  	result = result * number
  	number -= 1
  end
 return result
end
  


 