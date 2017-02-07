count = 1

loop do
  puts "#{count} is #{count.even? ? "even":"odd"}!"
  count += 1
  break if count == 6
end