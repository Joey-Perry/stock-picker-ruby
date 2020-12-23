def stock_picker(stock_prices_array)
    # find the lowest number then subtract it from the highest number
    # if the highest number has an index that is lower than the lowest number then discard that result
    paired_stocks = []
    stock_prices_array.each_with_index do |price, index|
        stock_prices_array.each_with_index do |price_2, index_2|
            if index_2 > index
                if price_2 > price
                    paired_stocks << [price, price_2]
                end
            end
        end
    end
    differences = paired_stocks.map { |pair| pair[1] - pair[0]}
    p index_of_final_values = paired_stocks[differences.index(differences.max)].map { |value| stock_prices_array.index(value)}
end

# Test Case
# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

stock_picker([17,3,6,9,15,8,6,1,10])