def caesar_cipher(string, shift)
    result = String.new
    alphabet = String.new  # cesar alphabet

    for i in 0..((shift/26.0).ceil)
        for i in 'a'..'z'
            alphabet << i
        end
    end
    for i in 0..((shift/26.0).ceil)
        for i in 'A'..'Z'
            alphabet << i
        end
    end

    string.each_char do |char|
        if alphabet.include?(char)
            result << alphabet[alphabet.index(char) + shift]
        else
            result << char
        end
    end
    result
end
puts caesar_cipher('What a string!', 5)
