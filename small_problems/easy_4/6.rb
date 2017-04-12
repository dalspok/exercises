require "pry"
=begin

arr - same num of elements, running total

input
  - arr
output
  - arr
data
  - arr
rules
  - running total: sum from 1..current
algorithm
  - map_with_index: for each number
    - running total: sum from 1..current
      - reduce: a[0] .. a[cur-index] - slice(range)

alg2
  - map_with_index (counter)
    - first(x).reduce

=end

# def running_total(arr)
#   arr.map.with_index do |value, index|
#     arr[0..index].reduce(:+)
#   end
# end

def running_total(arr)
  return [] if arr.empty?
  cur_num_index = 0
  arr_final = []
  loop do
    sum = 0
    traversing_index = 0
    loop do
      sum += arr[traversing_index]
      traversing_index += 1
      break if traversing_index > cur_num_index
    end
    arr_final << sum
    cur_num_index += 1
    break if cur_num_index == arr.size
  end
  arr_final
end

p running_total([2, 5, 13])
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []