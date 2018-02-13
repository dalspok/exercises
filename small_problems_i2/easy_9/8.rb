=begin

P:
-input: int(count), int(first num)
-output arr of multiplies

0 => []

E:

D:

A:

C: =========================
=end


def sequence(count, start)
  return [] if count == 0
  arr = [start]
  (count-1).times do |_|
      arr << arr.first + arr.last
  end
  arr
end

p sequence(5, 1)

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []