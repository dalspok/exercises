=begin

P:

E:

D:

A:

C: =========================
=end

def fizzbuzz(start_n, end_n)
  arr = (start_n..end_n).map do |number|
    if number % 3 == 0 && number % 5 == 0
      "FizzBuzz"
    elsif number % 3 == 0
      "Fizz"
    elsif number % 5 == 0
      "Buzz"
    else
      number
    end
  end
  puts arr.join(", ")
end



fizzbuzz(1, 15)