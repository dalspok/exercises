stoplight = ['green', 'yellow', 'red'].sample

puts case stoplight
  when "red"
    "Stop!"
  when "yellow"
    "Slow down!"
  when "green"
    "Go!"
  end
    