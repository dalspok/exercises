=begin

P:
-input: 2 str
-output: shorter-longer-shorter (str)

E:

D:

A:

C: =========================
=end

# def short_long_short(a, b)
#   a, b = b, a if a.size > b.size
#   a + b + a
# end

def short_long_short(a, b)
  [a + b + a, b + a + b].sort_by(&:size)[0]
end



p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"