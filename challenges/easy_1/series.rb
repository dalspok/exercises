
=begin

P:

Write a program that will take a string of digits
 and give you all the possible consecutive number
 series of length n in that string.

-input: str
-output: arr of nums (consecutive series of n length)
n > size --> ArgumentError

E:
"O1234" | 3 => [[0,1,2] ... 123 234]
        | 6 => ArgError

not specified:
        |0
 ""
 other input type

D:
- class Series
- methods
  - slices(num_of slices, >1 ) => arr_of_arr of nums

A:
met slices:
- convert str to arr of nums
- into new array:
  - using "each_cons", push series (subarrs) of n-length
- return arr

C: =========================
=end

class Series
  def initialize(string)
    @series = string.chars.map(&:to_i)
  end

  def slices(size)
    raise ArgumentError if size > @series.size
    all_combinations = []
    @series.each_cons(size){|one_combination| all_combinations << one_combination}
    all_combinations
  end
end