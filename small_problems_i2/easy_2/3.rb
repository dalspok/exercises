print "What is the bill? "
amount = gets.chomp.to_f

print "What is the tip percentage? "
tip_perc = gets.chomp.to_f

tip = amount * (tip_perc/100)
total = amount + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"