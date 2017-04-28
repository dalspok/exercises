=begin

  -input: 2 arrs (same length, non_empty)
  -output: 1 arr
  -rules:
    - order: 1/1 1/2 2/2 2/2 3/1 3/2

  algorithm:
    (var 1)
    - using index, traverse through both arrays
    - add respective elements to new_arr

    (var_2)
    - each_with_index + also take element from other array (same index)
    - adding to new_arr

    (var_3)
    - using .times, iterating through both arrs

    (var_4)
    - dup arrays
    - using for (1..size), pop and push to new arr.
=end

# def interleave(arr1, arr2)
#   index = 0
#   final_arr = []
#   while index < arr1.size
#     final_arr.push(arr1[index], arr2[index])
#     index += 1
#   end
#   final_arr
# end

# def interleave(arr1, arr2)
#   final_arr = []
#   arr1.each_with_index {|item, index| final_arr.push(item, arr2[index])}
#   final_arr
# end

# def interleave(arr1, arr2)
#   final_arr = []
#   arr1.size.times {|index| final_arr.push(arr1[index], arr2[index])}
#   final_arr
# end

# def interleave(arr1, arr2)
#   arr_dup1 = arr1.dup
#   arr_dup2 = arr2.dup
#   final_arr = []
#   for _ in 0..(arr1.size-1)
#     final_arr.unshift(arr_dup2.pop)
#     final_arr.unshift(arr_dup1.pop)
#   end
#   final_arr
# end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten

end

p interleave([1, 2, 3], ['a', 'b', 'c'])

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

