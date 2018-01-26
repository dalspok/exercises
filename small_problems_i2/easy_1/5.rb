=begin

P:
input: string
output: same string (MUT)
? more spaces

E:


D:
arr of str

A:
- transform str -> arr of str
- reverse items in arr
- join (" ")
- MUT string by clear + <<

C: =================================
=end


def reverse_sentence str
  str.split.reverse.join(" ")
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'