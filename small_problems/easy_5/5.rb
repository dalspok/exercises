
=begin

  input: str
  output: str, no concecutive spaces
  border cases: numbers?
  algorithm
    - map: letters -> letters, nonL -> spaces
      - using a..z range (downcase)
    - gsub: double spaces

    (2 var)
    - index (pointer)
    - acc
    - loop: letters?(ascii) -> acc,
        nonL? -> space (check is space before? not -> space)


=end

# def cleanup(str)
#   no_non_letters = str.chars.map do |char|
#     if ("a".."z").include? char.downcase
#       char
#     else
#       " "
#     end
#   end
#   str = no_non_letters.join
#   while str.include? "  "
#     str.gsub!("  ", " ")
#   end
#   str
# end

def cleanup(str)
  index = 0
  final_string = ""
  while index < str.size
    if ("a".."z").include? str[index].downcase
      final_string += str[index]
    elsif final_string[-1] != " "
      final_string += " "
    end
    index += 1
  end
  final_string
end

p cleanup("---what's my +*& line?")

p cleanup("---what's my +*& line?") == ' what s my line '