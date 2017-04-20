
=begin

  input: str ("gg")
  output: str ("g")
  border cases: str/num validation?
  rules: repeating -> only once
  algorithm:
    var(1)
    - split: => arr
    - each_with_object, checking last char with object_char
    - join

     var(2)
    - as var(1), but reduce

    var(2)
    - index, previous, accumulator
    - traversing using index
    - comparing with previous -> adding to acc

=end

# def crunch(str)
#   final_arr = str.chars.each_with_object [] do |chr, accumulator|
#     accumulator << chr unless chr == accumulator[-1]
#   end
#   final_arr.join
# end

# def crunch(str)
#   str.chars.reduce("") do |memo, char|
#     memo[-1] == char ? memo : memo + char
#   end
# end

def crunch(str)
  index = 0
  acc = ""
  while index < str.size
    acc += str[index] unless str[index] == acc[-1]
    index += 1
  end
  acc
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''