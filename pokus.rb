def sum_array(arr)
  return 0 if arr.size == 1
  return nil if arr.size == 0
  max = arr.max
  min = arr.min
  arr.delete_at(arr.index(max))
  arr.delete_at(arr.index(min))
  arr.reduce(0, :+)
end

p sum_array []