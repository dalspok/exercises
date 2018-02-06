=begin

P:

E:

D:

A:
- print first line, using +,-(2+str.size),+
- print second line, using |space(2+str.size)|
- print third line, using | space str space |
- 4th = 2nd line
- 5th = 1st line

C: =========================
=end



def print_in_box(str)
  puts "+-" + ("-"*str.size) + "-+"
  puts "| " + (" "*str.size) + " |"
  puts "| " + str + " |"
  puts "| " + (" "*str.size) + " |"
  puts "+-" + ("-"*str.size) + "-+"
end



print_in_box('To boldly go where no one has gone before.')