require "pry"

# - letters space point
# - words: 1..20 chars
# - input: 1.. words, separated 1.. space, terminated 0.. spaces and "."
# - input read everything
# - output: word word word.
# - odd words (index based) reverse

# "whats the matter with kansas" => "whats eht matter htiw kansas"
# "i am   the    big  ..." => "i ma the gib."
# "one." => "one."

# - read and print one at a time

# Algorithm:
# - use flag to indicate if words need to be reversed
#   + accumulator to accumulate words from letters

# No bonus:
# - separate by one or more spaces
# - delete last element
# - map, so that every second is reversed
# - print by joining with space and final: "."



def odd_words(original)
  words = original.split(/\s+/)

  if words.last.match(/\A\.+\Z/)
    words.pop
  else
    words.last.slice!(-1)
  end
  words.map!.with_index {|word, idx| (idx+1).odd? ? word : word.reverse}
  words.join(" ") + "."
end



p odd_words("whats the matter with kansas.") == "whats eht matter htiw kansas."
p odd_words("whats  the matter    with   kansas.") == "whats eht matter htiw kansas."
p odd_words("i am   the    big  ...") == "i ma the gib."
p odd_words("i am   the    big...") == "i ma the gib."
p odd_words("one.") == "one."




