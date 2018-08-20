
def zip(arr1, arr2)
  counter = 0
  new_arr = []
  while counter < arr1.size
    new_arr.push [arr1[counter], arr2[counter]]
    counter += 1
  end
  new_arr
end
p zip([1, 2, 3], [4, 5, 6])
p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]