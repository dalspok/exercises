# def reverse_words(sentence)
#   sentence.split.map(&:reverse).join(" ")
# end

# ---LOW-PROCESS VERSION ---

def reverse_words(sentence)
  arr_of_words = split_sentence(sentence)
  arr_of_reversed_words = reverse_array(arr_of_words)
  join_array(arr_of_reversed_words)
end

def split_sentence(sentence)
  counter = 0
  final_arr = []
  word = ""
  while counter < sentence.size
    char = sentence[counter]
    if char == " " && word.size > 0
      final_arr << word
      word = ""
    elsif counter == sentence.size - 1
      word += char
      final_arr << word
    elsif char != " "
      word += char
    end
    counter += 1
  end
  final_arr
end

def reverse_array(words)
  arr_counter = 0
  new_arr = []
  while arr_counter < words.size
    new_arr << reverse_word(words[arr_counter])
    arr_counter += 1
  end
  new_arr
end

def reverse_word(word)
  counter = 0
  new_str = ""
  while counter < word.size
    new_str.prepend(word[counter])
    counter += 1
  end
  new_str
end

def join_array(arr)
  sentence = ""
  counter = 0
  while counter < arr.size
    sentence += arr[counter]
    sentence += " " if counter < (arr.size - 1)
    counter += 1
  end
  sentence
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS