
# def sum_of_sums(arr)
#   sum = 0
#   (arr.size).times do |idx|
#     sum += arr[0..idx].reduce(:+)
#   end
#   sum
# end

def sum_of_sums(arr)
  sum = 0
  idx = 0
  while idx < arr.size
    sum += arr[0..idx].reduce(:+)
    idx += 1
  end
  sum
end


p sum_of_sums([3, 5, 2])

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35