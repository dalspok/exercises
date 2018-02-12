=begin

P:
-input: arr1, arr2
-output: arr (product of elements)

E:

D:

A:

C: =========================
=end


# def multiply_list(arr1, arr2)
#   arr1.map.with_index { |item, index| item * arr2[index] }
# end

def multiply_list(arr1,arr2)
  arr1.zip(arr2).map { |pair| pair.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
