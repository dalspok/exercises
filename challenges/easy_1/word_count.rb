
# - initialize: str
# - #word_count method: dictionary of word freq
# - word:
#   - split by: punctuation (.,), whitespace chars
#   - ignore/delete punctuation (except '")
#   - ignore quotations = delete same apostrophes beginning and end of str
#   - (include nums, apostrophes = ')
#   - normalize case (downcase)


class Phrase
  attr_reader :sentence, :words
  def initialize(phrase)
    @sentence = phrase
    @words = split_to_words
  end

  def word_count
    counter = Hash.new(0)
    words.each {|word| counter[word] += 1}
    counter
  end

  #private

  def split_to_words
    words = sentence.downcase.split(/[\s,.]/)
    words.map! do |word|
      word.gsub!(/[^a-z0-9']/, "")
      word.gsub(/\A'(.*)'\Z/, '\1')
    end
    words.delete("")
    words
  end
end

p Phrase.new('car : carpet as java : javascript!!&@$%^&').word_count