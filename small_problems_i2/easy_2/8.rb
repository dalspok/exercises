=begin

P:
input: +int, str (s or p)

E:

D:

A:

C: =========================
=end

def sum(num)
  (1..num).to_a.reduce(:+)
end

def product(num)
  (1..num).to_a.reduce(:*)
end


puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

case choice
when "s" then puts "The sum is #{sum(num)}"
when "p" then puts "The product is #{product(num)}"
end