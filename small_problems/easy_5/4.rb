require "pry"
=begin
  input/output: string
  algorithm:
    - arr: split a sentence
    - word: swap letters
      - first = word.slice!(0)
      - last = word.slice!(-1)
      - word << first
      - word.prepend(last)
    - join
=end

# version 1

# def swap(str)
#   arr = str.split.map do |word|
#     first = word.slice!(0)
#     last = word.slice!(-1)
#     word << first
#     word.prepend(last) unless last.nil?
#     word
#   end
#   arr.join(" ")
# end

def swap(str)
  arr = str.split.each do |word|
    next if word.size == 1
    word << word.slice!(0)
    word.prepend(word.slice!(-2))
  end
  arr.join(" ")
end



p swap('Oh what a wonderful day it is')

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'