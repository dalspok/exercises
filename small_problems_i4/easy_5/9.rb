
def crunch(str)
  return "" if str == ""
  final_str = ""
  str.chars.each_cons(2) do |char, next_char|
    final_str << char unless char == next_char
  end
  final_str + str[-1]
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''