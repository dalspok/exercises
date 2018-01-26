=begin

P:
-input:
  - +int
  - boolean
-output: int

E:

D:

A:
- perform / if true, otherwise: 0

C: =======================

=end

def calculate_bonus(num, bonus)
  bonus ? num / 2 : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000