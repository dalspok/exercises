

# P:
# Input: count (int >0), starting(any int)
# Output: arr [starting * 1, starting * 2, ...] (.size = count)

# count 0 => []

# E:

# D:

# A:
# - create array
# - iterate through successive numbers from 1 to count
#   - for each number, add (startign * count) to array
# - return array

# C: =========================

def sequence(count, starting)
  (1..count).to_a.map {|multiplicator| starting * multiplicator}
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []