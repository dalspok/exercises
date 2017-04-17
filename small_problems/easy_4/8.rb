def string_to_integer(str)
  str.chars.reduce(0) { |memo, chr| (memo*10) + char_to_int(chr) }
end

def char_to_int(str) # ascii
  str.ord - 48
end

# def string_to_signed_integer(str)
#   case str.chr
#   when "+" then string_to_integer(str[1..-1])
#   when "-" then -string_to_integer(str[1..-1])
#   else string_to_integer(str)
#   end
# end

def string_to_signed_integer(str)
  is_negative = str[0] == "-"
  int = string_to_integer(str.delete "+-")
  is_negative ? -int : int
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100