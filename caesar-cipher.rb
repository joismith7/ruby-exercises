def caesar_cipher(phrase, anyshift)
  shift = anyshift % 26
  output = phrase.split("")
  output.map! do |letter| 
  	if letter.ord.between?('A'.ord, 'Z'.ord)
  	  letter = letter.ord + shift <= 'Z'.ord ? (letter.ord + shift).chr : (letter.ord + shift - 26).chr
  	elsif letter.ord.between?('a'.ord, 'z'.ord)
  	  letter = letter.ord + shift <= 'z'.ord ? (letter.ord + shift).chr : (letter.ord + shift - 26).chr
   	else
  	  letter
  	end
  end
  output.join("")
end 

#puts caesar_cipher("What a string!", 5)
#puts caesar_cipher("STUVWXY", 5)

#Test cases
puts caesar_cipher("AZ0az", 0) # "AZ0az"
puts caesar_cipher("AZ0az", 1) # "BA0ba"
puts caesar_cipher("AZ0az", -1) # "ZY0zy"
puts caesar_cipher("AZ0az", 26) # "AZ0az"
puts caesar_cipher("AZ0az", 27) # "BA0ba"
puts caesar_cipher("AZ0az", -27) #