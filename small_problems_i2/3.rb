=begin

P:
-input: str(xx:xx)
-output: int

E:

D:

A:
after midnight:
- take two last chr
- convert them to number (min)
- take first two chrs
- convert them to numbers (hours)
- compute hours * 60 + 24

before_midnight:
- (24*60) - after_midnight

C: =========================
=end

def after_midnight(str)
  min_str = str.slice(-2..-1)
  hour_str = str.slice(0..1)
  (min_str.to_i + hour_str.to_i * 60) % 1440
end

def before_midnight(str)
  ((24*60) - after_midnight(str)) % 1440
end

p before_midnight('00:00')
p before_midnight('24:00')

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0