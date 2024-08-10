def stock_picker(prices)
  # Initialize the sentinel values for best_profit, start_day, and end_day.
  best_profit = 0
  start_day = 0
  end_day = 0

  (0..prices.size - 2).each do |i|
    # Iterate until the last element of the array.
    (i + 1..prices.size - 1).each do |j|
      profit = prices[j] - prices[i]
      # If the profit is greater than the current best_profit, update values.
      if profit > best_profit
        best_profit = profit
        start_day = i
        end_day = j
      end
    end
  end

  p "Days: #{[prices[start_day], prices[end_day]]}"
  [start_day, end_day] # Return the indices of the buy day and sell day
end

p "Index of days: #{stock_picker([17,3,6,9,15,8,6,1,10])}"