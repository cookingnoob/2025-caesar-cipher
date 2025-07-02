# frozen_string_literal: true

def change_letter(first, last, letter, shift)
  alphabet = (first..last).to_a
  letter_index = alphabet.find_index { |l| l == letter }
  alphabet[(letter_index + shift) % alphabet.length]
end

def get_array(string)
  string.split('')
end

def map_array(array, shift)
  array.map do |letter|
    if [' ', '!'].include?(letter)
      letter
    elsif letter.upcase == letter
      change_letter('A', 'Z', letter, shift)
    elsif letter.downcase == letter
      change_letter('a', 'z', letter, shift)
    end
  end
end

def join_array(array)
  array.join
end

def cipher(string, shift)
  string_array = get_array(string)
  new_string_array = map_array(string_array, shift)
  join_array(new_string_array)
end

p cipher('AaaBbb xyzo!!', 1)
