def get_cipher(first, last, letter, shift)
  alphabet = (first..last).to_a
  letter_index = alphabet.find_index {|l| l == letter}  
  alphabet[(letter_index + shift) % alphabet.length]
end

def cipher (string, shift)
  string_array = string.split("")
  new_string_array = string_array.map do |letter|
    if letter == " " || letter == "!"
      letter
    elsif letter.upcase == letter
      get_cipher('A', 'Z',letter, shift)
    elsif letter.downcase == letter
      get_cipher('a', 'z',letter, shift)
    end
  end
  new_string_array.join
end



p cipher('AaaBbb xyzo!!', 1)