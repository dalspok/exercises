# def oddities(arr)
#   counter = 0
#   new_arr = []
#   loop do
#     break if counter >= arr.size
#     new_arr << arr[counter] if counter.even?
#     counter += 1
#   end
#   new_arr
# end

# def oddities(arr)
#   new_arr = []
#   arr.each.with_index do |value, index|
#     new_arr << value if index.even?
#   end
#   new_arr
# end

def oddities(arr)
  arr.select.with_index {|_, index| index.even?}
end




p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []