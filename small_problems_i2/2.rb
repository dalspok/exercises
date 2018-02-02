=begin

P:
-int (+ or -)
-str (repres. time of day)

E:

D:

A:
+ integers:
  - calculate minutes by (time % 60)
  - calculate hours by ((time / 60) % 24)
  - create string using format

C: =========================
=end

def time_of_day(int)
  minutes = int % 60
  hours = (int / 60) % 24
  "#{format("%.2d" % hours)}:#{format("%.2d" % minutes)}"
end


p time_of_day(35)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-1437)


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"