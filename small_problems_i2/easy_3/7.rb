=begin

P:
method
- input: arr
- output: Arr, containing elements 1,3,5....
? copy? referencing them?

E:

D:

A:
- iterating through arr, using index
alt
- iterating through 1.up size (step 2)

C: =========================
=end


# def oddities(arr)
#   arr1 = []
#   arr.each_with_index {|el, index| arr1 << el if index.even?}
#   arr1
# end

def oddities(arr)
  arr1 = []
  0.step(arr.size-1, 2) {|index| arr1 << arr[index]}
  arr1
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []