=begin

  input: int, positive
  output: display
  border cases: 0
  rules:
    - first line: (size-1)spaces + 1*star
    - 2nd:        (size-2)spaces + 2stars
    - last line:  (size-size)spaces + size*stars

    - num of lines = size
    - for a line num: (size-lin_num)spaces + line*stars
  alg:
    - (1..size): display with rule above

  rules:upside-down
    - 1 line     0 spaces, 5 stars
    - 2nd:       1 space, 4 stars
    - 3nd        2        3
    - 4          3        2
    -5:         (line-1)*spaces (size-(line-1))*stars
=end

def triangle(size)
  (1..size).each {|line| puts (" " * (size-line)) + ("*" * line)}
end

# def triangle(size)
#   size.times do |index|
#     puts "#{" " * (size-(index+1))}#{"*" * (index + 1)}"
#   end
# end

def triangle_upside(size)
  (1..size).each {|line| puts (" " * (line-1)) + ("*" * (size-line+1))}
end


triangle(1)
triangle(5)
triangle(4)

triangle_upside(1)
triangle_upside(5)
triangle_upside(4)

