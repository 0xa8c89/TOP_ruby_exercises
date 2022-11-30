def bubble_sort(array)
    
    for i in 1..array.length-1
        for i in 0..array.length-2
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
            end
        end
    end
    array
end

p bubble_sort([9,6,5,3,2])