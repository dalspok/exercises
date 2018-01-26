
# Problem:
#   Method:
#     - 2 args: str, positive int

#   Prints as many times as int suggests

#   Input: str, int
#   Output: printout
#   ? empty strings

# Examples:
#   repeat("Hello", 1) # prints 1x
#   repeat("abc", 5)  # prints 5x
#   repeat("",1) # prints empty line (?)

# Data: none
# A:
#   - using times function
#   - alt. using loop do and counter
# -------------------------------------

# def repeat(str, num)
#   num.times { |_| puts str }
# end


def repeat(str,num)
  counter = 0
  loop do
    puts str
    counter += 1
    break if counter == num
  end

end

repeat("Hello", 1) # prints 1x
repeat("abc", 5)  # prints 5x
repeat("",1) # prints empty line (?)