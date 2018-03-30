def stock_picker(prices)
  if prices.length <= 1
  	puts "Please have at least two dates"
  else
  	maxProfit = prices[1] - prices[0]
    prices.each do |element| 
      subarray = prices.drop(prices.index(element))
      subarray.each do |n|
      	maxProfit = n - subarray[0] if (n - subarray[0]) > maxProfit
      end
    end
    puts "Made a profit of #{maxProfit}"
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])
