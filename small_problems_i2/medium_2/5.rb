=begin

P:

E:

D:

A:

C: =========================
=end



def triangle(a, b, c)
  if a == b && b == c && c == a
    :equilateral
  elsif a + b > c && b + c > a && a + c > b
    if a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  else
    :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid