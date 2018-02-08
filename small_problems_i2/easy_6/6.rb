=begin

P:

E:

D:

A:

C: =========================
=end


# def merge(a,b)
#   a | b
# end

def merge(a,b)
  (a + b).uniq
end




p merge([1, 3, 5], [3, 6, 9])
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]