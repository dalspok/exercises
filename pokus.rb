def alphanum(string)
  cleared_string = ""
  string.each_char do |char|
    cleared_string << ALPHAN.include? char
  end
end