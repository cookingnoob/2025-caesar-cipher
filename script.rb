

def cipher (string, shift)
  string_array = string.split("")
  new_string_array = string_array.map do |letter|
    if letter.upcase == letter
      letter_index = ('A'..'Z').to_a.find_index {|l| l == letter}  
    ('A'..'Z').to_a[letter_index + shift]
    else
    letter_index = ('a'..'z').to_a.find_index {|l| l == letter}  
    ('a'..'z').to_a[letter_index + shift]
    end
  end
  new_string_array.join
end



p cipher('HelloOOo', 5)