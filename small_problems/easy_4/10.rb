def integer_to_string(int)
  arr = []
  loop do
    arr.unshift(int % 10)
    int /= 10
    break if int < 1
  end
  arr.join
end


def signed_integer_to_string(num)
  preffix = case num <=> 0
            when +1 then "+"
            when -1 then "-"
            else ""
            end
  integer_to_string(num.abs).prepend(preffix)
end


p signed_integer_to_string(-4321)
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'