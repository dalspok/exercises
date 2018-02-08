=begin

P:

E:

D:

A:

C: =========================
=end

def halvsies(a)
  first_size = a.size.odd? ? a.size / 2 + 1 : a.size / 2
  second_size = a.size - first_size
  [a.first(first_size), a.last(second_size)]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]