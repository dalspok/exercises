=begin

P:
- input: +int
- output: str of "10...", start with 1 (length = int)

E:


D:
arr -> str


A:
- create arr of "1" of length int
- traverse (map) through it, changing every odd (index) item to 0
- join

alt.
- create empty arr
- push 1
- loop (when arr.size < int)
  - push opposite of last (index: -1) item
- join

C: =================================
=end

# def stringy(length)
#   arr = Array.new(length, 1)
#   arr.map.with_index { |_, index| index.even? ? 1 : 0 }.join("")
# end

def stringy(length)
  arr = [1]
  while arr.size < length
    arr << (arr[-1] == 1 ? 0 : 1)
  end
  arr.join
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'