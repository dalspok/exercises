=begin

P:
- input: arr(+int), non-empty
- output: float, avg

E:


D:


A:
- using reduce for sum, then divide by arr.size

- with loop:
  - counter (index)
  - sum


C: =================================
=end


# def average(arr)
#   arr.reduce(:+) / arr.size
# end

def average(arr)
  counter = 0
  sum = 0

  while counter < arr.size
    sum += arr[counter]
    counter += 1
  end
  sum / arr.size
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40