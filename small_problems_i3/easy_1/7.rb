
# def stringy(size)
#   string = ""
#   size.times {|iteration| string << (iteration.even? ? "1" : "0")}
#   string
# end

def stringy(size)
  flag = "1"
  string = ""
  (1..size).each do |_|
    string << flag
    if flag == "1"
      flag = "0"
    else
      flag = "1"
    end
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'