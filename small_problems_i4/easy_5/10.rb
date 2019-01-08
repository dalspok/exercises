def print_in_box(str)
  length_inner = str.size

  border_line = "+ #{'-'*length_inner} +"
  empty_line = "| #{" "*length_inner} |"
  middle_line = "| #{str} |"

  puts border_line
  puts empty_line
  puts middle_line
  puts empty_line
  puts border_line
end

print_in_box('To boldly go where no one has gone before.')
