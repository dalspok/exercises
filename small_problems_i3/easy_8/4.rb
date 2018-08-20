
def substrings_at_start(str)
  arr = []
  (0..(str.size-1)).each do |idx|
    arr << str.slice(0..idx)
  end
  arr
end


def substrings(str)
  arr = []
  (0..(str.size-1)).each {|idx| arr << substrings_at_start(str.slice(idx..str.size-1))}
  arr.flatten
end

p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]