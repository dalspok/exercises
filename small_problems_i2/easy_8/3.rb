=begin

P:

E:

D:

A:

C: =========================
=end

def substrings_at_start(str)
  arr = str.chars
  arr1 = arr.map.with_index {|_, index| arr[0..index].join }
  arr1
end


p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']