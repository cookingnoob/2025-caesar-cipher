

def cipher (string, shift)
  string_array = string.split("")
  new_string_array = string_array.map do |letter|
    letter_index = ('a'..'z').to_a.find_index {|l| l == letter}  
    ('a'..'z').to_a[letter_index + shift]
  end
  new_string_array.join
end



p cipher('hello', 5)