
def stringy(length)
  char = "1"
  final_string = ""
  length.times do
    final_string << char
    char = (char == "1" ? "0" : "1")
  end
  final_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'