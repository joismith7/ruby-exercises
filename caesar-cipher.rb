def caesar_cipher(phrase, shift)
  output = phrase.split("")
  output.map! do |letter| 
  	if letter.ord.between?(65, 90)
  	  letter = letter.ord + shift <= 90 ? (letter.ord + shift).chr : (letter.ord + shift - 90).chr
  	elsif letter.ord.between?(97, 122)
  	  letter = letter.ord + shift <= 122 ? (letter.ord + shift).chr : (letter.ord + shift - 122).chr
  	else
  	  letter
  	end
  end
  output.join("")
end 

puts caesar_cipher("What a string!", 5)
