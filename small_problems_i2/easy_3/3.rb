
puts "Please write word or multiple words:"
sentence = gets.chomp

size = sentence.delete(" ").size

puts "There are #{size} characters in #{sentence}"