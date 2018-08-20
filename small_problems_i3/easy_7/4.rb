def swapcase(string)
  arr = string.each_char.map do |character|
    if character =~ /[A-Z]/ then character.downcase
    elsif character =~ /[a-z]/ then character.upcase
    else character
    end
  end
  arr.join
end

p swapcase('CamelCase')
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'