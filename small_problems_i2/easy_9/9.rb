=begin

P:

E:

D:

A:

C: =========================
=end

def get_grade(*arr)
  average = arr.reduce(:+) / arr.size

  case average
  when 0..59
    "E"
  when 60..69
    "D"
  when 70..79
    "C"
  when 80..89
    "B"
  else
    "A"
  end
end


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"