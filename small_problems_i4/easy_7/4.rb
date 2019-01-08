def swapcase(str)
  arr = str.chars.map do |char|
    ("A".."Z").include?(char) ? char.downcase : char.upcase
  end
  arr.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'