
ALPHAN = ("A".."Z").to_a + %w(0 1 2 3 4 5 6 7 8 9)

def real_palindrome?(string)
  palindrome?(alphanum(string.upcase))
end

def alphanum(string)
  cleared_string = ""
  string.each_char do |char|
    cleared_string << char if ALPHAN.include?(char)
  end
  cleared_string
end

def palindrome?(string)
  string == string.reverse
end



p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false