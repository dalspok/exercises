
=begin
  - map_with_index
  - using indexes
=end


# def multiply_list(arr1, arr2)
#   arr1.map.with_index do |num, index|
#     num * arr2[index]
#   end
# end

def multiply_list(arr1, arr2)
  index = 0
  final_arr = []
  while index < arr1.size
   final_arr << arr1.at(index) * arr2.at(index)
    index += 1
  end
  final_arr
end



p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]