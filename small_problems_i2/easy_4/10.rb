=begin

P:

E:

D:

A:

C: =========================
=end
LOOKUP = %w(0 1 2 3 4 5 6 7 8 9)

def signed_integer_to_string(int)
  return "0" if int == 0
  prefix = int.negative? ? "-" : "+"
  prefix + integer_to_string(int.abs)
end


def integer_to_string(num)
  return "0" if num == 0
  str = ""
  while num > 0
    num, digit = num.divmod(10)
    str.prepend LOOKUP[digit]
  end
  str
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'