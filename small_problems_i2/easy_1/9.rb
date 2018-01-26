
=begin
P: method, 1 arg, +int,
- input: +int
- output: sum of digits (int)

E:
D:
A:
- brute force: looping through num, using %
  - till num / 10 < 1
  - adding to sum

- convert to str
- reducing (+) str.chars



C: =======================
=end

# def sum(num)
#   sum = 0
#   while num > 0
#     sum += num % 10
#     num /= 10
#   end
#   sum
# end

# def sum(num)
#   num.to_s.chars.reduce(0) { |memo, char| memo + char.to_i  }
# end

def sum(num)
  sum = 0
  num.to_s.size.times do |_|
   sum += num % 10
   num /= 10
  end
  sum
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

