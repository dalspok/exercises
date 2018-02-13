=begin

P:

E:

D:

A:

C: =========================
=end

def double_consonants(str)
  new_str = ""
  str.each_char do |char|
    if %w(a e i o u).include?(char.downcase) || char.match(/[^A-Za-z]/)
      new_str << char
    else
      new_str << char * 2
    end
  end
  new_str

end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""