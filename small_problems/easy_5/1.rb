=begin

  input: str
  output: int
  test cases/border
  rules: add all individual values
  algorithm:
    - reduce arr
    - with accumulator and loop str
    - each_with_object
    - map + sum
=end

# def ascii_value(str)
#   str.chars.reduce(0) { |memo, chr| memo + chr.ord   }
# end

# def ascii_value(str)
#   acc = 0
#   index = 0
#   while index < str.size
#     acc += str[index].ord
#     index += 1
#   end
#   acc
# end

# def ascii_value(str)
#   str.split("").each_with_object([]) { |chr, acc| acc << chr.ord  }.reduce(0, :+)
# end

def ascii_value(str)
  str.chars.map { |chr| chr.ord  }.reduce(0, :+)
end

p ascii_value('Four score')

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0