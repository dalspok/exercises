=begin

P:
input: non-empty str
output: middle char (1-odd, 2-even)
    -incl spaces

E:

D:

A:
- test length of str:
  - if odd -> return middle char ([size/2])
  - if even -> return two middle-char [size/2-1, 2]
- end

C: =========================
=end

def center_of str
  size = str.size
  if size.odd?
    str[size/2]
  else
    str[size/2 - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'