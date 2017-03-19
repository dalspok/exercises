
# def calculate_bonus(salary, is_bonus)
#   is_bonus ? salary / 2 : 0
# end

def calculate_bonus(salary, is_bonus)
  if is_bonus
    return salary / 2
  end
  0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000