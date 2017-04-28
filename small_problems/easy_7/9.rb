
=begin
  - product
  - map+reduce

  - using indexes

=end


# def multiply_all_pairs(arr1, arr2)
#   arr1.product(arr2).map {|pair| pair.reduce(:*)}.sort
# end

def multiply_all_pairs(arr1,arr2)
  index1 = 0
  final_arr = []
  while index1 < arr1.size
    index2 = 0
    while index2 < arr2.size
     final_arr << [arr1[index1], arr2[index2]]
     index2 += 1
    end
  index1 += 1
  end
  final_arr.map {|pair| pair[0]*pair[1]}.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]