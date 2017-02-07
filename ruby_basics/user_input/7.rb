
PASSWORD = "Ahoj"
USERNAME = "Dal"

loop do
  puts ">> Please enter your user name:"
  user_name = gets.chomp
  puts ">> Please enter your password:"
  password = gets.chomp
  break if password == PASSWORD && user_name == USERNAME
  puts ">> Authorization failed!"
end

puts "Welcome!"