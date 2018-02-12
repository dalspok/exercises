=begin

P:

E:

D:

A:

C: =========================
=end


def substrings(str)
  final_arr = []
  arr = str.chars
  arr.each_index do |index|
    final_arr += substrings_at_start str[index..-1]
  end
  final_arr
end

def substrings_at_start(str)
  arr = str.chars
  arr1 = arr.map.with_index {|_, index| arr[0..index].join }
  arr1
end


p substrings('abcde')

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]