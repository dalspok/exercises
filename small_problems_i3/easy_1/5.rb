def reverse_sentence(string)
  words = string.split
  words.reverse.join(" ")
end

def reverse_sentence(string)
  final_string_arr = []
  counter = 0
  size = string.size
  word = ""
  until counter == size
    character = string[counter]
    if character == " "
      final_string_arr.unshift(word)
      word = ""
    elsif counter == size - 1
      final_string_arr.unshift(word + character)
    else
      word += character
    end
    counter += 1
  end
  final_string_arr.join(" ")
end

puts reverse_sentence('Hello World')

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'