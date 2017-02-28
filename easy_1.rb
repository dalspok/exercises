# def repeat(string, number)
#   number.times {puts string}
# end

# repeat "Hello",3


# def is_odd?(number)
#   # number.abs.odd?
#   # number % 2 != 0
#   number.remainder(2) != 0
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false

# ------------------------

# def digit_list(number)
#   number.to_s.split("").map{|i| i.to_i}
# end

# def digit_list1(number)
#   s = number.to_s
#   arr = []
#   until s.empty?
#     arr.unshift(s.slice!(-1).to_i)
#   end
#   arr
# end

# def digit_list2(number)
#   arr = []
#   loop do
#     arr.unshift(number % 10)
#     number /= 10
#     break if number == 0
#   end
#   arr
# end

# p digit_list2(12345)

# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]

# ---------------------------


# def count_occurrences(arr)
#   hsh = Hash.new(0)
#   arr.each {|item| hsh[item] += 1}
#   hsh.each {|key, number| puts "#{key} => #{number}"}
# end


# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 
#   'motorcycle', 'motorcycle', 'car', 'truck']

# count_occurrences(vehicles)

# ---------------------------

# def reverse_sentence(sentence)
#   # # var 1
#   # arr = []
#   # sentence.split.each {|word| arr.unshift(word)}
#   # arr.join(" ")
#   # # var 2
#   sentence.split.reverse.join(" ")
# end

# puts reverse_sentence('Hello World')
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# ----------------------------

# def reverse_words(sentence)
#   arr = sentence.split.map do |word|
#     word.size >= 5 ? word.reverse : word
#   end
#   arr.join(" ")
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# ----------------------------

# def stringy(length)
#   str = ""
#   i = 1
#   until str.length == length
#     str << i.to_s
#     if i == 1
#       i = 0
#     else i = 1 end
#   end
#   str
# end

# def stringy(length, start=1)
#   Array.new(length) { |i| i.even? ? start : (start-1).abs }.join
# end

# puts stringy(9, 0)
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# -----------------------------

# def average(arr)
#   arr.reduce(:+) / arr.length.to_f
  
# end

# puts average([1, 5, 87, 45, 8, 8])

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# --------------------------------

# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end


# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# --------------------------------

# def calculate_bonus(salary, if_bonus)
#   if_bonus ? salary / 2.0 : 0
# end


# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000














