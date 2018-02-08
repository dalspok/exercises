=begin

P:

E:

D:

A:

C: =========================
=end


def include?(arr, obj)
  arr.select{ |item| item == obj  }.size > 0
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false