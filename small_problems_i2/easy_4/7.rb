=begin

P:

E:

D:

A:

C: =========================
=end

def string_to_integer(str)
  counter = 0
  final_num = 0
  while counter < str.size
    final_num *= 10
    final_num += str[counter].ord - 48
    counter += 1
  end
  final_num

end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570