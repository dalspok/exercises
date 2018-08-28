
def rotate_rightmost_digits(num, digits)
  num_arr = num.to_s.chars.map(&:to_i)
  rotated = rotate_array(num_arr[-digits..-1])
  stem = num_arr[0, num_arr.size - digits]
  (stem + rotated).join.to_i
end

def rotate_array(arr)
  new_arr = arr.dup
  new_arr.push(new_arr.shift)
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917              # => true