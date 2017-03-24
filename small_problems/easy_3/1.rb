num_string = %w(1st 2nd 3rd 4th 5th last)
arr = []

final_num = until num_string.empty?
  puts "==> Enter the #{num_string.shift} number:"
  input = gets.chomp.to_i
  break input if arr.size == 5
  arr << input
end

appearance_text = arr.include?(final_num) ? "appears" : "does not appear"

puts "The number #{final_num} #{appearance_text} in #{arr}."