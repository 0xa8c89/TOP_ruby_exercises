def substrings(words, array)
    array.reduce(Hash.new(0)) do |hash, i|
        words.split(' ').each do |word|
            if i == word
                hash[word] += 1
            elsif word.include?(i)
                hash[i] += 1
            end
        end
        hash
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)