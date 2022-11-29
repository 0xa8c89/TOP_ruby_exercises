def substrings(word, array)
    array.reduce(Hash.new(0)) do |hash, i|
        if i == word
            hash[word] += 1
        elsif word.include?(i)
            hash[i] += 1
        end
        hash
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
