
# P:
# Anagram: case insensitive, all letters must be used, no rep

# E:

# D:
# Anagram class
# - intial default: ""
# - #match - mathing single str or arr of strs
#    - will use #anagram? method

# A:

# C: =========================

class Anagram
  attr_reader :matched_word
  def initialize(matched_word = "")
    @matched_word = matched_word
  end

  def match(sequence)
    sequence.select {|word| anagram?(word)}
  end

  private

  def anagram?(test_word)
    test_chars = test_word.downcase.chars.sort
    matched_chars = matched_word.downcase.chars.sort
    (test_chars == matched_chars) && (test_word.downcase != matched_word.downcase)
  end
end
