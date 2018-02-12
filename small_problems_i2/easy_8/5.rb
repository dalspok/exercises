=begin

P:

E:

D:

A:

C: =========================
=end

def substrings(str)
  final_arr = []
  arr = str.chars
  arr.each_index do |index|
    final_arr += substrings_at_start str[index..-1]
  end
  final_arr
end

def substrings_at_start(str)
  arr = str.chars
  arr1 = arr.map.with_index {|_, index| arr[0..index].join }
  arr1
end

def palindromes(str)
  arr = substrings(str)
  arr.select { |item| item == item.reverse && item.size > 1 }
end

p palindromes('madam')

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]