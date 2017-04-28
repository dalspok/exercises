
# reduce, /, format

def show_multiplicative_average(arr)
  multiplication = arr.reduce {|memo, number| memo * number}
  puts "The result is #{"%.3f" % (multiplication/arr.size.to_f)}"
end

show_multiplicative_average([3, 5])

show_multiplicative_average([2, 5, 7, 11, 13, 17])