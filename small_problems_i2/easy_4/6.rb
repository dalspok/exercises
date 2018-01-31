=begin

P:
- input arr
- output: arr with all element = total of this + previous elements

E:

D:

A:
- map, using reduce of subarr [0..current num ] using map.with_index

- using submethod total_in_subarr

C: =========================
=end

# def running_total(arr)
#   arr.map.with_index do |item, index|
#     arr[0..index].reduce(:+)
#   end
# end


def total_in_subarr(arr)
  sum = 0
  for item in arr do
    sum += item
  end
  sum
end

def running_total(arr)
  arr1 = []
  (0...arr.size).each do |index|
    arr1 << total_in_subarr(arr[0..index])
  end
  arr1
end



p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []