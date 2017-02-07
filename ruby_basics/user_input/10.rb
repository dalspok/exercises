def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def positive_negative?(a,b)
  return a.to_i*b.to_i < 0
end

a,b = nil

loop do 
  loop do
    puts ">> Please enter a positive or negative integer:"
    a = gets.chomp
    break if valid_number? a
    puts ">> Invalid input. Only non-zero integers are allowed."
  end


  loop do
    puts ">> Please enter a positive or negative integer:"
    b = gets.chomp
    break if valid_number? b
    puts ">> Invalid input. Only non-zero integers are allowed."
  end

  break if positive_negative?(a,b)
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."

end

puts "#{a} + #{b} = #{a.to_i + b.to_i}"