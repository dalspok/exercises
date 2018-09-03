
# input -> num of verse (from 0 = last one)
#         - num indicates num of bottles
#           - last one (0) -> different
#       -> from .. to (num, num)
# output -> verse: two lines of text, separated by \n
#        -> betweenn verses: \n


# edge cases:
# - negative or >99
# - other type?
# - no argument

# A:
# - # one_verse
#   - create by interpolation
#   - if 0 ? -> other text
#   - if 1 > other text
# - # more verses
#   - for each num (starting, ending)
#     - #one_verse, separate by \n (=>arr=>join)
# - # whole song
#   - -> more verses (0..99)


# class BeerSong

#   def verses(starting=99, ending=0)
#     starting.downto(ending).map {|number| one_verse(number)}.join("\n")
#   end

#   def verse(number)
#     verses(number, number)
#   end

#   def lyrics
#     verses
#   end

#   private

#   def one_verse(number)
#     case number
#     when (3..99)
#       "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
#       "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
#     when 2
#       "2 bottles of beer on the wall, 2 bottles of beer.\n" \
#       "Take one down and pass it around, 1 bottle of beer on the wall.\n"
#     when 1
#       "1 bottle of beer on the wall, 1 bottle of beer.\n" \
#       "Take it down and pass it around, no more bottles of beer on the wall.\n"
#     when 0
#       "No more bottles of beer on the wall, no more bottles of beer.\n" \
#       "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
#     else
#       ""
#     end
#   end
# end

# BONUS SOLUTION

class BeerSong
  BOTTLE_FORM = {1 => "bottle"}
  BOTTLE_FORM.default = "bottles"
  TAKE_DOWN_FORM = {1 => "it"}
  TAKE_DOWN_FORM.default = "one"

  def verses(starting=99, ending=0)
    starting.downto(ending).map {|number| one_verse(number)}.join("\n")
  end

  def verse(number)
    verses(number, number)
  end

  def lyrics
    verses
  end

  private

  def one_verse(number)
    sentence = "#{number} #{BOTTLE_FORM[number]} of beer on the wall, #{number} #{BOTTLE_FORM[number]} of beer.\n" \
     "Take #{TAKE_DOWN_FORM[number]} down and pass it around, #{number-1} #{BOTTLE_FORM[number-1]} of beer on the wall.\n"
    sentence.sub!(/\A0/, "No more")
    sentence.sub!(/\b0\b/, "no more")
    sentence.sub!("Take one down and pass it around, -1", "Go to the store and buy some more, 99")
    sentence
  end
end
