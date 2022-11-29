def stock_picker(array)
    highest = -999999999

    array.each_with_index do |buy, idx|
        array[idx+1..-1].each do |sell|
            highest = sell - buy if (sell - buy) > highest
        end
    end
    highest
end

puts stock_picker([17,3,6,9,15,8,6,1,10])