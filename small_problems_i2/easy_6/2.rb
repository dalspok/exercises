=begin

P:
-input: arr of strs
-output: arr of strs without vowels

E:

D:

A:
- map array using new values –> remove strings (delete)

C: =========================
=end

VOWELS = "aeiouAEIOU"

def remove_vowels(arr)
  arr.map { |item| item.delete VOWELS }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']