
def count(*values)
  values.reduce(0) {|memo, value| yield(value) ? memo + 1 : memo }
end

p count(1, 3, 6) { |value| value.odd? }

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3