# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

def interleave(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |item, index|
    new_arr << item
    new_arr << arr2[index]
  end
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
