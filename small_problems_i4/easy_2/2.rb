SQUARE_FEET_PER_METER = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i
area = length * width

puts "The area of the room is #{area} square meters \
 (#{area * SQUARE_FEET_PER_METER}square feet)."