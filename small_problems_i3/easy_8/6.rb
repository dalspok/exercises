=begin

P:
input: int(start), int(end)
output: print out all
  - div by 3 -> "Fizz"
  - div by 5 -> "Buzz"
  - div by 3 and 5 -> "FizzBuzz"

E:

D:

A:
- for each num in the row of (start) to (end)
  - prepare empty str_for_output
  - if div by 3, concatenate str_out with "Fizz"
  - if div by 5, conc with "Buzz" to a string
  - if not div by 3 or 5, add num to str-Out
  - printout str_out

C: =========================
=end

# def fizzbuzz(start_num, end_num)
#   (start_num..end_num).each do |num|
#     output = ""
#     output << "Fizz" if num % 3 == 0
#     output << "Buzz" if num % 5 == 0
#     output << num.to_s unless (num % 3 == 0 || num % 5 == 0)
#     num == end_num ? output << "\n" : output << ", "
#     print output
#   end
# end

def fizzbuzz(start_num, end_num)
  arr = (start_num..end_num).map do |num|
    if num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    elsif num % 3 && num % 5 == 0
      "FizzBuzz"
    else
      num
    end
  end
  puts arr.join(", ")
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
