
def substrings_at_start(str)
  new_arr = []
  1.upto(str.size) do |length|
    new_arr << str.slice(0, length)
  end
  new_arr
end

def substrings(str)
  final_arr = []
  (0..str.size).each do |index|
    final_arr.concat(substrings_at_start(str.slice(index..-1)))
  end
  final_arr
end

p substrings("abcde")

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]