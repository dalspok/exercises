
# def multiply_list(arr1, arr2)
#   new_arr = []
#   arr1.each_with_index {|item, idx| new_arr << item * arr2[idx]}
#   new_arr
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|subarr| subarr.reduce(:*)}
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]