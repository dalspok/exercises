

print "What is your name?"
name = gets.chomp
unless name[-1] == "!"
  puts "Hello #{name.capitalize}."
else
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
end