
def halvsies(arr)
  first_arr = []
  second_arr = []
  arr.each_with_index do |item, index|
    if index < arr.size / 2.0
      first_arr << item
    else
      second_arr << item
    end
  end
  [first_arr, second_arr]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]