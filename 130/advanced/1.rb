fac = Enumerator.new do |y|
  counter = 0
  factorial = 1
  loop do
    y << factorial
    counter += 1
    factorial *= counter
  end
end

7.times {|_| p fac.next}

fac.rewind
p fac.take(7)
