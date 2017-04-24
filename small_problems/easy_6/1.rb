=begin

  input: float
  output: string
  border cases: 0, >360, check for types?
  rules:
    - 1 degree = 60'
    - 1 minutes = 60''
    - degree * 60 = minutes
  algorithm:
    - transform portion behind . -> seconds (*3600)
    - transform from seconds to min:sec -divmod(60)
=end

MINUTES_PER_DEGREE = 60
SECONDS_PER_DEGREE = 60

# def dms(degree_num)
#   degree = degree_num.floor
#   minutes, seconds = ((degree_num % 1) * 3600).divmod(60)
#   seconds = seconds.floor
#   minutes = "0" + minutes.to_s if minutes < 10
#   seconds = "0" + seconds.to_s if seconds < 10
#   "#{degree}°#{minutes}'#{seconds}\""
# end

def dms(degree_num)
  total_seconds = (degree_num.abs * MINUTES_PER_DEGREE * SECONDS_PER_DEGREE).round
  degree, remaining_seconds = total_seconds.divmod(MINUTES_PER_DEGREE*SECONDS_PER_DEGREE)
  degree %= 360
  degree = -degree if degree_num.negative?
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_DEGREE)
  "#{degree}°#{minutes.to_s.rjust(2,"0")}'#{seconds.to_s.rjust(2,"0")}\""
end


puts dms(430)
puts dms(-76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")