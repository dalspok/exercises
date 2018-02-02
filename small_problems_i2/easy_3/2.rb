
OPERATIONS = [:+, :-, :*, :/, :%, :**]

puts "==> Enter the first number:"
a = gets.chomp.to_i
puts "==> Enter the second number:"
b = gets.chomp.to_i

OPERATIONS.each do |operation|
  result = [a, b].reduce(operation)
  puts "==> #{a} #{operation} #{b} = #{result}"
end