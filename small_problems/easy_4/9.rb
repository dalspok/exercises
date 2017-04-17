=begin

input: int
output: str
rules: % 10 => last element
algorithm:
  - last elements
  - unshift to arr
  - join
=end

def integer_to_string(int)
  arr = []
  loop do
    arr.unshift(int % 10)
    int /= 10
    break if int < 1
  end
  arr.join
end

p integer_to_string(4321)

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'