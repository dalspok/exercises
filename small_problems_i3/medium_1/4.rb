
# P:
# input: num of lines (int) - X
# output: printout

#    *   (x-2) space (1) stars (x-2) space => (num-stars)/2
#   ***  (X-1)space (3)stars (x-1)space =>
#  ***** X stars
#   ***
#    *
# E:

# D:

# A:
# - iterate through num 1..X by 2, this is star_num
#   - print out row of ((X-star_num)/2 spaces, star_num stars and dtto spaces)
# - iterate through num X-1..1
#   - print the same
# C: =========================


def diamond(rows)
  1.step(rows, 2) {|star_num| printout_diamond_row(star_num, rows)}
  (rows-2).step(1, -2) {|star_num| printout_diamond_row(star_num, rows)}
end

def printout_diamond_row(stars, size)
  spaces = " " * ((size - stars) / 2)
  stars = "*" * stars
  stars[1..-2] = " " * (stars.size - 2)  if stars.size > 1
  puts "#{spaces}#{stars}#{spaces}"
end

diamond(11)