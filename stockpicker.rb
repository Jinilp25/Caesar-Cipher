

def stock_picker(ticker)
  highest_profit = 0
  buy_index = 0
  sell_index = 0
  ticker.each_with_index do |price, index|
    for i in index..ticker.length-1
      profit = ticker[i] - price
      if profit > highest_profit
        highest_profit = profit
        buy_index = index
        sell_index = i
      end
    end
  end
  [buy_index, sell_index]

end

p stock_picker([17,3,6,9,15,8,6,1,10])
