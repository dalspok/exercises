
# P:
# - input: int (num)
# - output: str ("deficient, perfect, abundand")
# based on sum_of_factors (excluded num) <=> num

# E:

# D:

# A:
# #obtain_factors
# - iterate through range (1...num), for each num1
#   - check whether num is divisable by num1
#   - if yes, add to arr /
#   (or reduce -> obtain sum)
# - compare this sum with num, returning str message

# C: =========================


class PerfectNumber

  def self.classify(num)
    raise RuntimeError if num < 0
    case sum_of_factors(num) <=> num
    when -1
      "deficient"
    when 0
      "perfect"
    when 1
      "abundant"
    end
  end

  private

  def self.sum_of_factors(num)
    (1...num).reduce(0) do |sum, divisor|
      num % divisor == 0 ? sum + divisor : sum
    end
  end
end
