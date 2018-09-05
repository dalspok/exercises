# RNA - sequence of letters
# Codons - 1 or more triplets -> protein names

# AUG Methionine
# UUU, UUC  Phenylalanine
# UUA, UUG  Leucine
# UCU, UCC, UCA, UCG  Serine
# UAU, UAC  Tyrosine
# UGU, UGC  Cysteine
# UGG Tryptophan
# UAA, UAG, UGA STOP

# "AUGUUUUCU" -> "AUG", "UUU", "UCU"


# edge cases: ? invalid triplet

# #::of_codon
#  - input: str (triplet)
#  - output: protein name or "STOP"
# D: hash with str as keys

# #::of_rna(strand)
#  - input: str, output: arr of protein names (no "STOP")
#  - invalid strand -> InvalidCodonError

#  A:
#  - split by triplets
#     - by iteratingh until str is empty, slicing first three
#  - iterate through each triplet, translate to protein name
#  - stop iteration when end or STOP is encountered

class InvalidCodonError < StandardError; end

class Translation

TRANSLATION = { %w(AUG) => "Methionine",
                %w(UUU UUC) => "Phenylalanine",
                %w(UUA UUG) => "Leucine",
                %w(UCU UCC UCA UCG) => "Serine",
                %w(UAU UAC) => "Tyrosine",
                %w(UGU UGC) => "Cysteine",
                %w(UGG) => "Tryptophan",
                %w(UAA UAG UGA) => "STOP" }


  def self.of_codon(codon)
    TRANSLATION.each do | triplets, protein|
      return protein if triplets.include? codon
    end
    raise InvalidCodonError
  end

  def self.of_rna(sequence)
    codons = create_codons(sequence)
    proteins = []
    codons.each do |codon|
      translation = Translation.of_codon(codon)
      return proteins if translation == "STOP"
      proteins << translation
    end
    proteins
  end

  def self.create_codons(sequence)
    codons = []
    (0...sequence.size).step(3) do |start_index|
      codons << sequence.slice(start_index, 3)
    end
    codons
  end
end





