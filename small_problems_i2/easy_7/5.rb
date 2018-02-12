=begin

P:
-input: str
-output: str

- every other AaAaAa
- non-alphab char count

E:

D:

A:
- usng flag:
  - iterate, using arr, change flag at the end of block

- usng odd/even index
  - counter as index
  - if even - upcase

C: =========================
=end


def staggered_case str
  lower = true
  arr1 = str.chars.map do |char|
    lower = (lower ? false : true)
    lower ? char.downcase : char.upcase
  end
  arr1.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'