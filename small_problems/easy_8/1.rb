
=begin

  input: arr of ints
  output: int (sum of sequences)
  border: at least 1 num, no checking
  logic:
    - subsequence: (index): 0, 0-1, 0-2...0-(last)

  algorithm:
    - loop, end-index: 0..-1, incremented
      - inner loop, with index from 0..endindex, included
      - adding to subsum
    - adding subsum to sum
    - nulling subsum
    - loop again---
    - return sum

    (var 2)
    - take next(first) item from arr
    - push it to new_arr
    - reduce new_arr (+)
    - add to sum


=end


# def sum_of_sums(arr)
#   sum = 0
#   end_index = 0
#   while end_index < arr.size
#   subsum = 0
#   index = 0
#     while index <= end_index
#     subsum += arr[index]
#     index += 1
#     end
#   sum += subsum
#   end_index += 1
#   end
#   sum
# end

# def sum_of_sums(arr)
#   new_arr = []
#   sum = 0
#   arr.each do |item|
#     new_arr << item
#     sum += new_arr.reduce(:+)
#   end
#   sum
# end

def sum_of_sums(arr)
  (0...arr.size).reduce(0) do |memo, index|
    memo + arr.slice(0..index).reduce(:+)
  end
end



p sum_of_sums([3, 5, 2])
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35