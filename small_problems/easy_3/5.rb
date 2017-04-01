def multiply(a, b)
  a * b
end

def square(num)
  multiply(num, num)
end

def power(num, quot)
  acc = num
  while quot >= 2
    acc = multiply(acc, num)
    quot -= 1
  end
  acc
end


p square(5) == 25
p square(-8) == 64

p power(2, 4)


