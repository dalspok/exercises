=begin

P:

E:

D:

A:
- checking that value/key /the other/ of the pair does not appear in word

C: =========================
=end

BLOCKS = {"B" => "O", "X" => "K", "D" => "Q", "C" => "P", "N" => "A", "G" => "T", "R" => "E", "F" => "S",
  "J" => "W", "H" => "U", "V" => "I", "L" => "Y", "Z" => "M",
"O" => "B", "K" => "X", "Q" => "D", "P" => "C", "A" => "N", "T" => "G", "E" => "R", "S" => "F",
  "W" => "J", "U" => "H", "I" => "V", "Y" => "L", "M" => "Z"}

def block_word?(word)
  word.each_char do |char|
    return false if word.upcase.include?(BLOCKS[char.upcase])
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true