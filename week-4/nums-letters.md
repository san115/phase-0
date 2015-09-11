**Release 1**
**What does puts do?** It prints the results of the Ruby code and shows the output on a new line.
**What is an integer?** What is a float? An interger is a whole number, without decimals, where as a float is a number with decimals. For example, "3" is an interger, but "3.0" is a float.
**What is the difference between float and integer division? 
How would you explain the difference to someone who doesn't know anything about programming?** When you use floats to divide, the result of the calculation returns the value carried over to decimals. For example: 6.0 / 5.0 (or 5) would return 1.2. In contrast, when you use intergers the return rounds down to the closest whole-number value, so 6 / 5 returns 1.

**Release 2**
Hours in a year:
```ruby
puts (24 * 365) * 10
```
Minutes in a decade:
```ruby
puts (60 * 24 * 365) * 10 + (60 * 24 * 2)
```

**Release 7**
**How does Ruby handle addition, subtraction, multiplication, and division of numbers?** Ruby executes them like calculators and can perform arithematics for either integers, whole numbers, or floats, numbers with decimals, as specified. 

**What is the difference between integers and floats?** Integers are whole numbers without carrying the decimals (ex. 3), where as floats contain decimals (ex. 3.0).

**What is the difference between integer and float division?** A division using integers returns the closest whole-number value that has been rounded down. Division using floats returns the value calculated to the decimals.

**What are strings? Why and when would you use them?** Strings are groups of letters, such as word(s), phrase, sentence. They can be used for "puts" or "print" command to displays the strings. Numbers can also be used as strings, but they need to be enclosed in quotation marks. NUmbers can also be used as strings by applying ".to_s" 

**What are local variables? Why and when would you use them?** Local variables work within the method and will not function outside of the method in whihc it was defined, hence local. Having local variables helps to keep confusion away as the variables are not affected by what happens outside of the designated method.

**How was this challenge? Did you get a good review of some of the basics?** It helped me to recall some of the basics of ruby.

[Defining Variables](defining-variables.rb)
[simple string](simple-string.rb)
[basic math](basic-math.rb)
