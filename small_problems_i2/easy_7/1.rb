=begin

P:

E:

D:

A:
-

C: =========================
=end

# def interleave a,b
#   a.zip(b).flatten
# end

def interleave a,b
  arr1 = []
  for i in (0...a.size)
    arr1 << a[i] << b[i]
  end
  arr1
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']