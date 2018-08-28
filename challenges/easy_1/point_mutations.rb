
# P:
# - difference -> letters are not the same
# - equal sizes, if not -> shorter

# E:
# ? inocrrect DNA?

# D:

# A:
# #hamming_distance:
#    - if arrays/str not equal size -> split with shorter value
#   - make array difference -> count chars

# C: =========================

class DNA
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
  end

  def hamming_distance(tested)
    shorter_length = [sequence.size, tested.size].min
    tested_abridged = tested[0, shorter_length].chars
    original_abridged = sequence[0, shorter_length].chars

    count = 0
    original_abridged.each_with_index do |nucl, idx|
      count += 1 if nucl != tested_abridged[idx]
    end
    count
  end
end

p DNA.new('AGACAACAGCCAGCCGCCGGATT').hamming_distance('AGGCAA')
p DNA.new("AAA").hamming_distance("AAB")