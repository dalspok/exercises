
def time_of_day(int_time)
  time_in_day = int_time % 1440
  hours = time_in_day / 60
  minutes = time_in_day % 60
  "#{format("%02d", hours)}:#{format("%02d", minutes)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"