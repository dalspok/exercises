=begin

input: string
output: integer
rules: no validation, no signs, just coversion
algorithm:
  - traversign using pointer
  - iterating using each
  - transforming + join

  - lookup x ord

=end

# def string_to_integer(str) #pointer
#   pointer = 0
#   final_int = 0
#   while pointer < str.size
#     final_int *= 10
#     final_int += char_to_int(str[pointer])
#     pointer += 1
#   end
#   final_int
# end

# def string_to_integer(str) # each
#   final_int = 0
#   str.each_char do |char|
#     final_int = (final_int * 10) + char_to_int(char)
#   end
#   final_int
# end

# def string_to_integer(str) # map
#   str.chars.map { |chr| char_to_int(chr)  }.reduce(0) { |memo, num| (memo*10) + num }
# end

def string_to_integer(str) # map2
  str.chars.reduce(0) { |memo, chr| (memo*10) + char_to_int(chr) }
end



# def char_to_int(chr) # lookup
#   case chr
#   when "0" then 0
#   when "1" then 1
#   when "2" then 2
#   when "3" then 3
#   when "4" then 4
#   when "5" then 5
#   when "6" then 6
#   when "7" then 7
#   when "8" then 8
#   when "9" then 9
#   end
# end

def char_to_int(str) # ascii
  str.ord - 48
end


p string_to_integer('4321')

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570