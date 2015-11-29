# Reverse Words


# I worked on this challenge [by myself, with: Ryan Zell].
# This challenge took me [#] hours.

# Pseudocode
# --take in sentence and split each word in the sentence by empty space
# --for each word in the sentence, reverse the letters of the word
# --then join the reversed words back into the sentence format
   

# Initial Solution

def reverseSentence

puts "What would you like to reverse?"

words = gets.chomp

sentence = words.split(" ")

  sentence.each do |x|
    (x.reverse!)
  end
 p sentence.join(" ")
end

reverseSentence


# Refactored Solution
def reverse_words(words)
sentence = words.split(" ")
  sentence.each do |x|
    (x.reverse!)
  end
 sentence.join(" ")
end

# Reflection
# What concepts did you review in this challenge? This was a opportunity to 
# review iteration and methods.
# What is still confusing to you about Ruby? More than confusing, I think I would benefit from a 
# review of concepts.
# What are you going to study to get more prepared for Phase 1? Though it doesn't seem have been 
# very long, it would probably be a good idea for me to do a general review of the concepts.