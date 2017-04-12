# def short_long_short(s1, s2)
#   # define short, assign -> short
#   if s1.size < s2.size
#     short, long = s1, s2
#   else
#     short, long = s2, s1
#   end
#   # concat short + long + short
#   short + long + short
# end

# def short_long_short(s1, s2)
#   [s1+s2+s1, s2+s1+s2].min_by(&:size)
# end

def short_long_short(s1, s2)
  s1.size < s2.size ? s1+s2+s1 : s2+s1+s2
end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

