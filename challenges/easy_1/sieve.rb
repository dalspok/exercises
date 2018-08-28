=begin

P:
- int (Limit)
- start with 2
- make next available num and delete all its multiples from the row

- edge cases: default value? for Sieve.new() : 10
- arguments less than 2? : ArgError


E:

D:

A:
- Class Sieve
  - will save limit
- method prime
  - create array of all numbers from 2..limit
  - repeat until array is empty
    - take next number (and pass it to primes array)
    - delete all multiples of that number from the array
  - return primes array

C: =========================
=end

class Sieve
  attr_reader :limit
  def initialize(limit=10)
    @limit = limit
  end

  def primes
    raise ArgumentError if limit <= 1
    row_of_numbers = (2..limit).to_a
    primes = []
    until row_of_numbers.empty?
      current_num = row_of_numbers.shift
      primes << current_num
      row_of_numbers.delete_if {|num| num % current_num == 0}
    end
    primes
  end
end