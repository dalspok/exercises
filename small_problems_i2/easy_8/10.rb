=begin

P:

E:

D:

A:

C: =========================
=end

def center_of(str)
  str.size.odd? ? str[str.size/2] : str[str.size/2-1 .. str.size/2]
end


p center_of('I love ruby')
p center_of('Launch')

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'