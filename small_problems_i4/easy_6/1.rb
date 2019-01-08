DEGREE = "\xC2\xB0"

def dms(dec_angle)
  degrees = dec_angle.to_i
  minutes_full = (dec_angle - degrees)*60
  minutes = minutes_full.to_i
  seconds = ((minutes_full - minutes) * 60).to_i

  "%.2d#{DEGREE}%.2d'%.2d\"" % [degrees, minutes, seconds]
end
puts dms(254.6)

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")