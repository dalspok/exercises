def triangle(width)
  (1..width).each do |num| spaces = width - num
    puts "#{" " * spaces}#{"*" * num}"
  end
end

triangle(5)