def step(start, final, step_value)
  counter = start
  until counter > final
    yield(counter)
    counter += step_value
  end
  counter
end


p step(1, 10, 3) { |value| puts "value = #{value}" }