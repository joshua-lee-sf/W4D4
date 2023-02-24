def stock_picker(arr)
    max_profit = 0
    days = []
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            if j > i && arr[j] - arr[i] > max_profit
                max_profit = arr[j] - arr[i]
                days = [i, j]
            end
        end
    end
    return "if you buy on day #{days[0]} and sell on day #{days[1]}, you will make the most profit"
end
