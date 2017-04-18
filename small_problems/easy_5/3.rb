=begin
  input: str
  output: int, -int(before_midnight)
  rules:
  algorithm:
    - after: conversion str[0..1]-> hour [3..4] -> minutes
    - before: 1440 - after(conversion)
    - time (hour:min after) -> minutes)

=end

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def before_midnight(str)
  (MINUTES_PER_DAY - after_midnight(str)) % MINUTES_PER_DAY
end

def after_midnight(str)
  hour = str[0..1].to_i
  minutes = str[3..4].to_i
  total_minutes = (hour * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

p after_midnight('24:00')

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0