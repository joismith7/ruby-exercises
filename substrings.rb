def substrings(text, dictionary)
  # output = Hash.new(0)
  #
  # dictionary.each do |i|
  # 	output[i] = text.scan(/#{i}/).count
  # end
  #
  # output

  bigarray = []

  wordray = text.downcase.split

  for i in wordray

    nn = dict.select { |w| i.include?(w) }

    bigarray = bigarray+nn

  end



  bighash = Hash.new(0)

  bigarray.each { |w| bighash[w] += 1 }



  return bighash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)