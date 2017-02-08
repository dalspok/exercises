numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |key, value|
  puts "A #{key} number is #{value}"
end

half_numbers = numbers.map do |_, value|
  value / 2
end
p half_numbers

low_numbers = numbers.select do |_, value|
  value < 25
end
p low_numbers

numbers.select! do |_, value|
  value < 25
end
p numbers