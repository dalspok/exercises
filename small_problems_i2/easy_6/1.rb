=begin

P:
-input: float (degrees)
-output: string (deg:minutes:sec)
? val, neg...

E:

D:

A:
- compute .fragment in seconds (3600 * fragment)
- compute minutes (frag-sec / 60) and seconds (frag-sec % 60)
- format into string

C: =========================
=end

SECONDS_IN_DEGREE = 3600
SECONDS_IN_MINUTE = 60
DEGREE = "\xC2\xB0"

def dms(degree_float)
  degrees = degree_float.to_i
  frag_seconds = (degree_float - degrees) * SECONDS_IN_DEGREE
  seconds = frag_seconds % SECONDS_IN_MINUTE
  minutes = frag_seconds / SECONDS_IN_MINUTE
  seconds_formatted = format("%.2d", seconds)
  minutes_formatted = format("%.2d", minutes)
  "#{degrees}#{DEGREE}#{minutes_formatted}'#{seconds_formatted}\""
end

puts dms(254.6)

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")