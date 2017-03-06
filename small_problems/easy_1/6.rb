
# def reverse_words(words)
#   arr = words.split
#   arr.map! do |word|
#     if word.size >= 5
#       word.reverse
#     else
#       word
#     end
#   end
#   arr.join(" ")
# end

def reverse(word)
  arr = word.split("")
  arr_new = []
  arr.each { |char| arr_new.unshift(char)  }
  arr_new.join
end


def reverse_words(words)
  arr = words.split
  arr.map! do |word|
    if word.size >= 5
      reverse(word)
    else
      word
    end
  end
  arr.join(" ")
end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS