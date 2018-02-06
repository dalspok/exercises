=begin

P:
-input: arr of ints (0..19)
-output: arr of ints sorted by english names

E:

D:

A:
- create arr as lookup table (index: num, values: names)
- sort_by array, using hsh values

C: =========================
=end


LOOKUP = %w[zero one two three four five six seven
 eight nine ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen]

def alphabetic_number_sort(arr)
  arr.sort_by { |item| LOOKUP[item] }
end




p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]