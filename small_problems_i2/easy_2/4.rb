=begin

P:
- input: age, ret_age (int)
- output ret_year, ret_difference

E:

D:

A:

C: =========================
=end


CURRENT_YEAR = 2018
puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_to_go = retirement_age - age
retirement_year = CURRENT_YEAR + years_to_go

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}"
puts "You have only #{years_to_go} years of work to go!"