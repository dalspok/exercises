=begin

P:

E:

D:

A:

C: =========================
=end

def triangle(a, b, c)
  if (a + b + c != 180) || (a <= 0 || b <= 0 || c <= 0)
    :invalid
  elsif a == 90 || b == 90 || c == 90
    :right
  elsif [a,b,c].max < 90
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid