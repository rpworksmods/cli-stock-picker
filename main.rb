def stock_picker(days)
  # return two days in an array representing best day to buy and best day to sell
  # Best day to sell: lowest number in array
  # Best day to buy: highest number in array
  ### BUT!! - Must buy before selling!!! #####
  # Use array item's index to determine which day each price relates to (0,1,2,3,4 e.t.c.)
  
  # Get highest number
  highest = days.max
  # Get lowest number
  lowest = days.min
  # Check if highest num's index is lower or higher than lowest num's index
  # Highest number MUST be after lowest number! (Highest has bigger index)
  if days.index(highest) > days.index(lowest)
    puts highest
    puts lowest
  else
    # If highest number is before lowest number, find the next highest number
    highest = days.max(2)[1]
    lowest = days.min(2)[1]
    puts highest
    puts lowest
  end
  
  
  
  # Then do the above the other way around - If highest number is before lowest number, this time find the next lowest number
  # calculate which option was most profitable
  # return results


end

stock_picker([17,3,6,9,15,8,6,1,10])

# Post-MVP:
# Beautify user input
# Request using gets in a user-friendly format:
# - Number of days: (To establish how many items in the array)
# - Loop through array and use gets to obtain price for that day
# - Calculate, and output results in a formatted way using dividers