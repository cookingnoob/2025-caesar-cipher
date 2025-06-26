uppercase_alphabet = ('A'..'Z').to_a
lowercase_alphabet = ('a'..'z').to_a

p uppercase_alphabet[10]
p lowercase_alphabet[10]

def cipher (string)
  string_array = string.split("")
  string_array.map do |letter|
    p letter
  end
end

cipher('hi how are you')