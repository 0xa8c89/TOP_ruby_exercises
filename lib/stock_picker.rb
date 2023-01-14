def stock_picker(array)
  highest = -999_999_999
  date = []

  array.each_with_index do |buy, idx|
    array[idx+1..-1].each do |sell|
      if (sell - buy) > highest
        highest = sell - buy
        date = [idx, array.index(sell)]
      end
    end
  end
  date
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
