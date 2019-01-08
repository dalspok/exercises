
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = 1440

def after_midnight(str_time)
  hours, minutes = str_time.split(":").map(&:to_i)
  (hours * MINUTES_IN_HOUR + minutes) % MINUTES_IN_DAY
end

def before_midnight(str_time)
  (MINUTES_IN_DAY - after_midnight(str_time)) % MINUTES_IN_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0