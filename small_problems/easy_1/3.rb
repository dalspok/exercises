# def digit_list(num)
#   arr = []
#   while num > 0
#     arr.unshift(num % 10)
#     num /= 10
#   end
#   arr
# end

# def digit_list(num)
#   num.to_s.chars.map{|i| i.to_i}
# end

# def digit_list(num)
#   arr = []
#   num.to_s.each_char{ |i| arr << i.to_i }
#   arr
# end

def digit_list(num)
  string = num.to_s
  arr = []
  0.upto(string.size-1) do |i|
    arr << string[i].to_i
  end 
  arr
end

p digit_list(12345)



# TEST

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]