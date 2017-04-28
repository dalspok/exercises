=begin



=end

def swapcase(str)
  str.chars.map {|char| (char =~ /[A-Z]/) ? (char.downcase) : (char.upcase)}.join
end

p swapcase('123')

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'