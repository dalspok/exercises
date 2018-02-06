=begin

P:
- input: str
- output: str (reducing all duplicities) (no squeeze)

E:

D:

A:
- create new helper arr
- iterate through orig_arr, using index, pushing item to helper arr
   if index+1 item is different


C: =========================
=end


def crunch(str)
  arr1 = []
  arr2 = str.chars
  arr2.each_with_index { |item, index| arr1 << item if item != arr2[index+1]}
  arr1.join
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''