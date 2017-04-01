# def palindrome?(string)
#   string == string.reverse
# end

def palindrome?(string)
  reverse_string = ""
  counter = 1
  while counter <= string.size
    reverse_string << string[-counter]
    counter += 1
  end
  string == reverse_string
end

def palindrome_advanced?(input)
  input == input.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p palindrome_advanced?([1,2,1]) == true
p palindrome_advanced?([1,2,1,1]) == false