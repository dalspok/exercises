=begin

P:

E:

D:

A:

C: =========================
=end


def max_rotation(num)
  arr = num.to_s.chars
  (arr.size).downto(1) do | num|
    arr = rotate_rightmost_digits(arr, num)
  end
  arr.join.to_i
end

def rotate_rightmost_digits(arr, digits)
  arr[-digits,digits] = rotate_array(arr[-digits, digits])
  arr
end

def rotate_array(arr)
  arr1 = arr.dup
  arr1 << (arr1.shift)
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845