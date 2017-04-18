
=begin
  input: int
  output: str
  rules: - = before, can be recalculated as +
  algoritm:
    - method time_positive
      - % minuts % hours (ignoring days)
        %
    - recalculate negative -> time positive

=end

def time_of_day(int)
  int = 1440 + int if int.negative?
  pure_minutes = (int % 1440)
  hours = pure_minutes / 60
  minutes = pure_minutes % 60
  ("%02d" % hours) + ":" + ("%02d" % minutes)

end



p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"