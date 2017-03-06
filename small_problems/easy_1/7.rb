# def stringy(length)
#   string = ""
#   1.upto(length) do |_|
#     string[-1] == "1" ? (string << "0") : (string << "1")
#   end
#   string
# end

# def stringy(length)
#   string = ""
#   for i in 1..length
#     i.odd? ? (string << "1") : (string << "0")
#   end
#   string
# end

# def stringy(length)
#   counter = 0
#   string = ""
#   until counter == length
#     string << ((counter+1).odd? ? "1" : "0")
#     counter += 1
#   end
#   string
# end

# def stringy(length)
#   arr = Array.new(length)
#   arr.map!.with_index { |item, index| index.even? ? 1 : 0}
#   arr.join
# end

def stringy(length)
  str = "1" * length
  length.times {|index| str[index] = "0" if index.odd?}
  str
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'