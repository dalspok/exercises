


# def halvsies(arr)
#   first = []
#   second = []
#   arr.each_with_index do |element, index|
#     if index < (arr.size / 2.0).round.to_i
#       first << element
#     else
#       second << element
#     end
#   end
#   [first, second]
# end

# slicing

# def halvsies(arr)
#   middle_index = arr.size.even? ? (arr.size / 2) : (arr.size / 2 + 1)
#   [arr[0...middle_index], arr[middle_index..-1]]
# end

def halvsies(arr)
  size = arr.size.even? ? (arr.size / 2) : (arr.size / 2 + 1)
  [arr.take(size), arr.drop(size)]
end

p halvsies([1, 2, 3, 4, 5])


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]