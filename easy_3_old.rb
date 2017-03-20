# 1 ---

# arr = []
# %w(1st 2nd 3rd 4th 5th last).each do |label|
#   puts "Enter the #{label} number:"
#   arr << gets.chomp.to_i
# end

# last = arr.pop
# appearance = arr.include?(last) ? "appears" : "does not appear"
# puts "The number #{last} #{appearance} in #{arr}."

# 2 ---

# puts "==> Enter the first number:"
# num1 = gets.chomp.to_i
# puts "==> Enter the second number:"
# num2 = gets.chomp.to_i
# numbers = [num1, num2]

# [:+, :-, :*, :/, :%, :**].each do |operation|
#   puts "==> #{num1} #{operation.to_s} #{num2} = #{numbers.reduce(operation)}"
# end

# 3 ---

# print "Please write word or multiple words: "
# input = gets.chomp

# count = input.chars.reduce(0) { |counter, char| (char != " ") ? counter + 1 : counter }

# puts "There are #{count} characters in \"#{input}\"."

# 4 ---

# def multiply(a, b)
#   a * b
# end

# p multiply(5, 3) == 15

