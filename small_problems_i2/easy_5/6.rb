=begin

P:
- input: str 1 or more words with " "
- output: hsh: keys-sizes values-frequency

E:

D:

A:
- split string by " " -> arr
- create new hsh with default 0
- iterate arr, adding value = val + 1 to respective keys (w.size)
- return hash

C: =========================
=end


def word_sizes(str)
  hsh = Hash.new(0)
  str.split.each {|word| hsh[word.size] += 1}
  hsh
end



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}