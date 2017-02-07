def time_of_day(daylight)
  puts "It's #{daylight ? "daylight" : "nighttime"}!"
end


daylight = [true, false].sample
time_of_day(daylight)