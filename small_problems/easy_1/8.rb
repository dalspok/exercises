# def average(arr)
#   arr.reduce(:+) / arr.size
# end

# def average(arr)
#   sum = 0
#   arr.each { |item| sum += item }
#   sum / arr.size
# end

def average(arr)
  counter = 0
  sum = 0
  until arr.size == counter
    sum += arr[counter]
    counter += 1
  end
  sum / arr.size
end



puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40