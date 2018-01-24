=begin

  rules/pseudo:
    - start with 1 to str.lentgh, produce slice with that length
    - add to new_arr

=end


def substrings_at_start(str)
  new_arr = []
  1.upto(str.size) do |length|
    new_arr << str.slice(0, length)
  end
  new_arr
end



p substrings_at_start('abc')

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']