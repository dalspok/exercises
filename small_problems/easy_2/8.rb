def prompt(text)
  puts ">> #{text}"
end

# def product(upper_limit)
#   (1..upper_limit).reduce(:*)
# end

def product(upper_limit)
  acc = 1
  num = 1
  loop do
    acc *= num
    num += 1
    break if num > upper_limit
  end
  acc
end

# def sum(upper_limit)
#   (1..upper_limit).reduce(:+)
# end

def sum(upper_limit)
  acc = 0
  (1..upper_limit).each { |num| acc+=num  }
  acc
end

prompt "Please enter an integer greater than 0:"
upper_limit = gets.chomp.to_i
prompt "Enter 's' to compute the sum, 'p' to compute the product."
what_compute = gets.chomp.downcase.chr

case what_compute
  when "s"
    puts "The sum of the integers between 1 and #{upper_limit} is #{sum(upper_limit)}."
  when "p"
    puts "The product of the integers between 1 and #{upper_limit} is #{product(upper_limit)}."
end