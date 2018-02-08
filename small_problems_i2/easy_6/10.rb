=begin

P:

E:

D:

A:
- print n lines
  - each m-th line (1,2,3...): (n-m)*spaces (m*"*")

C: =========================
=end

SPACE = " "
SYMBOL = "*"


def triangle(n)
  (1..n).each { |line| puts SPACE * (n-line) + SYMBOL * line}
end

triangle 5
triangle 15