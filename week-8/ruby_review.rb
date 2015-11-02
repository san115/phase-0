# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  decoded_sentence = []    # input breaks down the coded message into individual letters to be decoded
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes? set the letters in
            "g" => "c",   # an array and use rotate!(count=4) to reassign the letters
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # What is #each doing here? iterating the decoded message
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? text is coded, so not 
    # the actual text, which fits with false value
    cipher.each_key do |y| # What is #each_key doing here? calling up the decoder, so coded letters can be decoded
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? comparing coded letters with decoded letters
        # to find the real message. What are those variables really? blocks that iterates the coded message and decoding letters
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? break the loop when all the text has been decoded
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? decoding for
        # spaces between letters
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? accounting for numberals in the message
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for? returns text that does not fit decoder 
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning? puts together the decoded letters into sentences.
end

# Your Refactored Solution



# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
# What concepts did you review or learn in this challenge? iterating in ruby
# What is still confusing to you about Ruby? I need more practice working with hashes
# What are you going to study to get more prepared for Phase 1? Get more practice
