
=begin

  input: string
  output: (display)
  border cases: validation str?
  rules:
    - length: 2 spaces more than str.size (+banner border)
    - width: 5

  algorithm:
    (var 1)
    - just puts
      - "+" + "-" (text.size+2) + "+"
      - | + (same)
      - | " " str

    (var 2)
    - using variables

    (var 3)
    - comprehension

=end

# def print_in_box(str)
#   puts "+" + ("-" * (str.size+2)) + "+"
#   puts "|" + (" " * (str.size+2)) + "|"
#   puts "| " + str + " |"
#   puts "|" + (" " * (str.size+2)) + "|"
#   puts "+" + ("-" * (str.size+2)) + "+"
# end

# def print_in_box(str)
#   lines =  "+" + ("-" * (str.size+2)) + "+"
#   middles = "|" + (" " * (str.size+2)) + "|"
#   sentence =  "| " + str + " |"
#   puts lines, middles, sentence, middles, lines
# end

def print_in_box(str)
  puts "+#{("-" * (str.size+2))}+"
  puts "|#{(" " * (str.size+2))}|"
  puts "| #{str} |"
  puts "|#{(" " * (str.size+2))}|"
  puts "+#{("-" * (str.size+2))}+"

end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')