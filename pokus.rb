def break_chocolate(n, m)
  squares = [[n,m]]
  index = 0
  loop do
    first = squares[index][0]
    second = squares[index][1]
    loop do
      if squares[index][0] > 1
        squares << [1, squares[index][1]]
        squares[index][0] -= 1
        p squares
      elsif squares[index][1] > 1
        squares << [squares[index][0], 1]
        squares[index][1] -= 1
      else break
      end
    end
    index += 1
    p squares
    break if index >= squares.size
  end
  return squares.size - 1
end

p break_chocolate(3,1)