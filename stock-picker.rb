stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices)
  largest_gap = 0
  buy_price_index = 0
  sell_price_index = 0

  # compute each possible buy/sell scenario by looping through the array.
  stock_prices.each_with_index do |price, index|
    for i in index..stock_prices.length - 1
      current_gap = stock_prices[i] - price
      if current_gap > largest_gap
        largest_gap = current_gap
        buy_price_index = index
        sell_price_index = i
      end
    end
  end
  puts "Buy on day #{buy_price_index}, Sell on day: #{sell_price_index}"
end

stock_picker(stock_prices)
