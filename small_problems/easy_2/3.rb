print "What is the bill? "
bill = gets.chomp.to_i
print "What is the tip percentage? "
tip_perc = gets.chomp.to_i

tip = (tip_perc/100.0) * bill
total = bill + tip

puts "The tip is $ %0.2f" % tip
puts "The total is $ %0.2f" % total