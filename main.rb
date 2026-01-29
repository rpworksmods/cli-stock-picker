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

  puts "Buy on day #{best_days[0]} at price #{days[best_days[0]]}, sell on day #{best_days[1]} at price #{days[best_days[1]]}, for a profit of #{best_profit}."

end

puts "### Stock Picker ###"
puts "Given an array of stock prices where the index represents the day,"
puts "this program determines the best day to buy and the best day to sell"
puts "to maximize profit. It outputs the indices of the buy and sell days."
puts "For example, given the array: [17,19,3,6,9,15,8,6,1,10]"
puts "The output will be: [2, 5] (buy on day 2 at price 3, sell on day 5 at price 15)"
puts "---------------------"

puts "Please input the amount of days you'd like to analyze (e.g. 10):"
num_days = gets.chomp.to_i
prices = []
num_days.times do |i|
  puts "Enter the price for day #{i}:"
  price = gets.chomp.to_i
  prices << price
end
puts "Analyzing prices: #{prices}"
stock_picker(prices)