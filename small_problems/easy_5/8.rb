=begin

  input: arr: int [0..19]
  output: same
  border cases: 0, 19 incld, nonIntegers - no testing
  rules: english words, ascending order
  algorithm:
    (var1)
    - sort_by: english words,
      - look-up table: array (index = num)

    (var2)
    - sort (block): look-up table: hash

=end

LOOK_UP = %w(zero one two three four five six seven
eight nine ten eleven twelve thirteen fourteen fifteen
sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(arr)
#   arr.sort_by { |num| LOOK_UP[num]  }
# end

def alphabetic_number_sort(arr)
  arr.sort {|a, b| LOOK_UP[a] <=> LOOK_UP[b]}
end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]