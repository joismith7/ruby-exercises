def substrings(word, dictionary)
  output = Hash.new(0)

  dictionary.each do |i|
  	output[i] = word.scan(/#{i}/).count
  end
  
  output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)