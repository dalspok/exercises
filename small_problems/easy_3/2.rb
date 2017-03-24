def print_operation(first_num, second_num, operation)
  result = [first_num, second_num].reduce(operation)
  puts "==> #{first_num} #{operation.to_s} #{second_num} = #{result}"
end


puts "==> Enter the first number:"
a = gets.chomp.to_i
puts "==> Enter the second number:"
b = gets.chomp.to_i

[:+, :-, :*, :/, :%, :**].each{ |operation| print_operation(a,b,operation)  }
