# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10

# - edge cases: whitespaces, escape chars, "", nil -> 0
# - handle both cases

# D:
# - class Scrabble
# - use lookup table: hash with arrays

# A:
# method # score:
#   - split to arr
#   - map: using method find + upcase
       #find:
#          - for each (key, value) look for letter in key: return value
#         - and break
#         -  0 for not found chars
#   - sum and return


class Scrabble
  attr_reader :string
  LOOKUP = { %w(A E I O U L N R S T) => 1,
              %w(D G) => 2,
              %w(B C M P) => 3,
              %w(F H V W Y) => 4,
              %w(K) => 5,
              %w(J X) => 8,
              %w(Q Z) => 10 }


  def initialize(string="")
    @string = string
  end

  def self.score(text)
    Scrabble.new(text).score
  end

  def score
    return 0 unless @string
    string.split("")
          .map{|letter| find_value(letter)}
          .sum
  end

  private

  def find_value(letter)
    LOOKUP.each do |letters, value|
      return value if letters.include? letter.upcase
    end
    0
  end
end

p Scrabble.new("ahoj").score



