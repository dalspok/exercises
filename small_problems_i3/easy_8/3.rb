
def substrings_at_start(str)
  arr = []
  (0..(str.size-1)).each do |idx|
    arr << str.slice(0..idx)
  end
  arr
end


p substrings_at_start('abc')

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
