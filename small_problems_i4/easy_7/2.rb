
def letter_case_count(str)
  counter = Hash.new(0)
  str.each_char do |char|
    case char
    when "a".."z" then counter[:lowercase] += 1
    when "A".."Z" then counter[:uppercase] += 1
    else counter[:neither] += 1
    end
  end
  counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }