def substrings_at_start(str)
  arr = []
  (0..(str.size-1)).each do |idx|
    arr << str.slice(0..idx)
  end
  arr
end


def substrings(str)
  arr = []
  (0..(str.size-1)).each {|idx| arr << substrings_at_start(str.slice(idx..str.size-1))}
  arr.flatten
end

def palindromes(arr)
  substrings(arr).select do |item|
    palindrome?(item) && item.size > 1
  end
end

def palindrome?(str)
  arr = str.chars
  (0..(arr.size/2-1)).all? {|idx| arr[idx] == arr[-(idx+1)]}
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