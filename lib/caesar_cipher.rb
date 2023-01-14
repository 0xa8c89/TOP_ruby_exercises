def caesar_cipher(string, shift)
  result = ''
  alphabet = ''  # cesar alphabet

  (0..((shift / 26.0).ceil)).each { ('a'..'z').each { |i| alphabet << i } }
  (0..((shift / 26.0).ceil)).each { ('A'..'Z').each { |i| alphabet << i } }

  string.each_char do |char|
    alphabet.include?(char) ? result << alphabet[alphabet.index(char) + shift] : result.push(char)
  end
  result
end
# puts caesar_cipher('What a string!', 5)
