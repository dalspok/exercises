

# RULES:
# - starting vowel -> append "ay"
#   - vowels: eaiou + y (except ye) + xr
# - starting consonant -> append to end + append "ay"
#   - complicated consonant +: ye, ch, qu, th, thr, sch
#   - additional: x (except "xr")

# D:
# - checking using regexs
# - regexs are saved in arrays

# A:
# - split sentence into words
# - check first three (or less if shorter) chars:
#   - 1. vowels match: if match, break other processing
#   - 2. selected consonants match: if match, change using regexs
#   - 3. else: change consonants
# - add final "ay"
# - join


class PigLatin

  DOUBLE_CONSONANTS = %w(ch qu th thr sch)
  TRIPPLE_CONSONANTS = %w(thr sch)
  VOWELS = %w(a e i o u y)

  def self.translate(sentence)
    words = sentence.split
    transformed_words = words.map do |word|
                          transform(word) + "ay"
                        end
    transformed_words.join(" ")
  end

  def self.transform(word)
    if word[1,2].downcase == ("qu") && !word[0].downcase.start_with?(*VOWELS)
      word[3..-1] + word[0,3]
    elsif word[1].downcase == ("e") && word[0].downcase.start_with?("y")
      word[1..-1] + word[0,1].downcase
    elsif word.start_with?(*TRIPPLE_CONSONANTS)
      word[3..-1].downcase + word[0,3].downcase
    elsif word.start_with?(*DOUBLE_CONSONANTS)
      word[2..-1].downcase + word[0,2].downcase
    elsif word.downcase.start_with? "xr"
      word
    elsif word.downcase.start_with?(*VOWELS)
      word
    else
      word[1..-1] + word[0,1] # rest must be starting with consonant
    end
  end
end

