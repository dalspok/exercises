


# print "Enter name:"
# name = gets.chomp
# name = "Teddy" if name.empty?
# puts "#{name} is #{rand(180) + 20} years old"

# ---------------------

# print "Length: "
# length = gets.chomp.to_f

# print "Width: "
# width = gets.chomp.to_f

# area = length * width
# puts "Area is #{area} m2 = #{area*10.7639} sq feet."

# -----------------------

# print "What is the bill? "
# bill = gets.chomp.to_f
# print "What is the tip percentage? "
# tip_percent = gets.chomp.to_f
# tip = bill*(tip_percent/100.0).round(1)
# puts
# puts "The tip is #{format("%.2f", tip)}"
# puts "The total is #{format("%.2f", bill + tip)}"

# -----------------------

# print "What is your age? "
# age = gets.chomp.to_i
# print "At what age would you like to retire? "
# retire = gets.chomp.to_i

# current_year = Time.new.year
# retire_year = current_year + (retire - age)

# puts "It's #{current_year}. You will retire in #{retire_year}."
# puts "You have only #{retire - age} years of work to go!"

# 5 -----------------------

# puts "What is your name?"
# input = gets.chomp

# if input[-1] == "!"
#   input.chop
#   puts "HELLO #{input.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{input}."
# end

# –-

# puts "What is your name?"
# input = gets
# input.chomp!

# if input[-1] == "!"
#   input.chop!
#   puts "HELLO #{input.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{input}."
# end

# 6 -----------------------

# (1..99).each { |i| puts i if i.odd? }

# ---

# i = 0
# while i < 99
#   i += 1
#   next if i.even?
#   puts i
# end

# 7 ---

# puts (1..99).select { |i| i.even? }

# 8 ---

# print "Please enter an integer greater than 0: "
# input = gets.chomp.to_i
# print "Enter 's' to compute the sum, 'p' to compute the product: "
# choice = gets.chomp
# result = if choice == "s"
#             (1..input).reduce(:+)
#           else
#             (1..input).reduce(:*)
#           end

# puts "The #{choice=="s" ? "sum" : "product"} of the integers between 1 and #{input} is #{result}."























