=begin

P:
-input: str
-output: str with words of digits -> digits

E:

D:

A:
-iterate through individual words, when digit name => digit
  - use index of array for digit

C: =========================
=end

DIGITS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

def word_to_digit(str)
  arr = str.split.map do |word|
    word_stem = word.delete("^a-zA-Z")
    word_ending = word.delete(word_stem)
    transformed_stem = DIGITS.index(word_stem.downcase) ? DIGITS.index(word_stem.downcase) : word_stem
    transformed_stem.to_s + word_ending
  end
  arr.join(" ")
end


p word_to_digit('Please call me at five five five one two three four. Thanks.')

p word_to_digit('Please call me at five five five one two three four. Thanks.') \
  == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
