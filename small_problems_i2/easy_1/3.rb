=begin

P:
- method
- input: one arg, positive int
- output: return: list of the digits

E:

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


D:



A:

1) using conversion:
- convert to string
- convert to digits using chars + using map (to_i)
- return arr

2) using computation
- iterate until num < 10:
  - take last digit: using % (num % 10)
  - insert this digit into arr (from front side: unshift)
  - divide number by 10
- add last digit to arr
- return arr

3) using conversion to str and the same index:
- convert to str
- using counter: iterate through string (form index 0)
  - insert that char (.to_i) into appropriate (counter) arr position



C: ==========================
=end

# def digit_list(num)
#   num.to_s.chars.map(&:to_i)
# end

# def digit_list(num)
#   arr = []
#   until num < 1
#     arr.unshift(num % 10)
#     num /= 10
#   end
#   arr
# end

def digit_list(num)
  counter = 0
  num = num.to_s
  arr = []
  while counter < num.size
    arr[counter] = num[counter].to_i
    counter += 1
  end
  arr
end



puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true