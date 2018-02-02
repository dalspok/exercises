PROMPTS = %w(1st 2nd 3rd 4th 5th last)
arr = []

PROMPTS.each do |prompt|
  puts "==> Enter the #{prompt} number:"
  arr << gets.chomp.to_i
end

searched_num = arr.pop
found = arr.include? searched_num

puts "The number #{searched_num} #{found ? "appears" : "does not appear"} \
in #{arr} "