=begin

P:
-input: str with non-a chars
-output: str with replaced -> " ", only one " "

E:

D:

A:
- gsub -> " " for non-a
- reduce spaces
  - if "  " found -> gsub "  " -> " "



C: =========================
=end

# def cleanup(str)
#   str1 = str.gsub(/[^A-Za-z]/, " ")
#   str1.gsub!("  ", " ") while str1.include? "  "
#   str1
# end

def cleanup str
  str1 = str.chars.map { |char| (("A".."Z").include? char.upcase) ? char : " "   }.join
  str1.gsub!("  ", " ") while str1.include? ("  ")
  str1
end


p cleanup("---what's my +*& line?") == ' what s my line '