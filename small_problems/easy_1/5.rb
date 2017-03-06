
# def reverse_sentence(sentence)
#   reversed_words = []
#   sentence.split.each { |word| reversed_words.unshift(word) }
#   reversed_words.join(" ")
# end

# def reverse_sentence(sentence)
#   words = sentence.split
#   words.reverse!
#   words.join(" ")
# end

# def reverse_sentence(sentence)
#   words = sentence.split
#   reversed_words = []
#   for word in words
#     reversed_words.unshift(word)
#   end
#   reversed_words.join(" ")
# end

# def reverse_sentence(sentence)
#   words = sentence.split
#   reversed_words = []
#   1.upto(words.size) { |index| reversed_words << words[-index]  }
#   reversed_words.join(" ")
# end

def reverse_sentence(sentence)
  words = sentence.split
  reversed_words = []
  (words.size-1).downto(0) { |index| reversed_words << words[index]  }
  reversed_words.join(" ")
end



# Tests

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'