=begin

  input: arr of strings
  output: arr of strings
  border cases: empty arr? num? str validation?
  rules:
    - aeiouAEIOU -> vowels
  algorithm:
    - map: individual words in array
      - each word: split: reject / include => word without vowels -> join
      => words
    - return

    (var 2
    - each_word: iteratate, using index
      - nonVowels -> acc
      - join acc
    - return arr
=end

VOWELS = "aeiouAEIOU"

def remove_vowels(str_arr)
  str_arr.map do |word|
    word.chars.reject { |char| VOWELS.include? char }.join
  end
end

# def remove_vowels(str_arr)
#   pointer_arr = 0
#   new_arr = []
#   while pointer_arr < str_arr.size
#     pointer_word = 0
#     acc = ""
#     word = str_arr[pointer_arr]
#     while pointer_word < word.size
#       acc += word[pointer_word] unless VOWELS.include? word[pointer_word]
#       pointer_word += 1
#     end
#     new_arr << acc
#     pointer_arr += 1
#   end
#   p new_arr
# end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']