=begin

P:

E:

D:

A:

C: =========================
=end

def featured(num)
  featured_num = num
  next_num = num + 1
  until featured_num > num
    if next_num.odd? && next_num % 7 == 0 && (next_num.to_s.chars.uniq.join.to_i == next_num)
      featured_num = next_num
    end
    return "Error" if next_num.to_s.size > 10
    next_num += 1
  end
  featured_num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987