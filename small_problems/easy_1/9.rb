# def sum(integer)
#   arr = integer.to_s.split("")
#   acc = 0
#   arr.each { |num| acc += num.to_i  }
#   acc
# end

# def sum(integer)
#   acc = 0
#   until integer < 10
#     acc += integer % 10
#     integer /= 10
#   end
#   acc + integer
# end

# def sum(integer)
#   str_int = integer.to_s
#   acc = 0
#   str_int.length.times do |_|
#     acc += str_int.slice!(-1).to_i
#   end
#   acc
# end

def sum(integer)
  str_int = integer.to_s
  acc = 0
  until str_int.empty?
    acc += str_int.slice!(-1).to_i
  end
  acc
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45