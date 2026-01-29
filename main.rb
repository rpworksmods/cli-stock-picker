def stock_picker(days)

  # Loop through days
  # For each day, subtract price from every day's price before it
  # Store the highest sum and the corresponding indices
  best_profit = 0
  best_days = [0,0] # [buy_day, sell_day]

  days.each_with_index do |sell_price, sell_day|
    days[0...sell_day].each_with_index do |buy_price, buy_day|
      profit = sell_price - buy_price
      if profit > best_profit
        best_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  puts best_days

end

stock_picker([17,19,3,6,9,15,8,6,1,10])

# Post-MVP:
# Beautify user input
# Request using gets in a user-friendly format:
# - Number of days: (To establish how many items in the array)
# - Loop through array and use gets to obtain price for that day
# - Calculate, and output results in a formatted way using dividers