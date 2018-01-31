=begin

P:

E:

D:

A:

C: =========================
=end

LOOKUP = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(num)
  return "0" if num == 0
  str = ""
  while num > 0
    num, digit = num.divmod(10)
    str.prepend LOOKUP[digit]
  end
  str
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'