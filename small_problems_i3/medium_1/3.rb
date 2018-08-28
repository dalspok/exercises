
# P:
# input: int (n - num of switches)
# output: arr of on-switches

# E:

# D:
# hash with keys (1..n) of false values
# switch on = true

# A:
# - create hash of (1..n) keys with false values
# - for each num A in the range (1..n)
#   - map the hash, so that each Ath key will change value
#     - using range.step
# - create arr of keys, which have true value
#   - using select

# C: =========================

def switch_lights(final)
  lights = {}
  (1..final).each {|num| lights[num] = false}
  (1..final).each do |interval|
    lights.each {|key, value| lights[key] = !value if key % interval == 0}
  end
  lights.select {|_, value| value}.keys
end

p switch_lights(5) == [1,4]
p switch_lights(10) == [1,4,9]