=begin

P:
-i: +int
-o: +int with reversed digits
    - drop zeros

E:

D:

A:
- convert to str
- reverse
- convert back to num

C: =========================
=end

def reversed_number(num)
  num.to_s.reverse.to_i
end


p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1