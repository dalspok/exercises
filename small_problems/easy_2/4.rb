YEAR = 2017

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

difference = retire_age - age

puts "It's #{YEAR}. You will retire in #{YEAR + difference}."
puts "You have only #{difference} years of work to go!"