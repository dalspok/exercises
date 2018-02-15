=begin

P:

E:

D:

A:

C: =========================
=end


def rotate_rightmost_digits(num, digits)
  arr = num.to_s.chars
  arr[-digits,digits] = rotate_array(arr[-digits, digits])
  arr.join.to_i
end

def rotate_array(arr)
  arr1 = arr.dup
  arr1 << (arr1.shift)
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917