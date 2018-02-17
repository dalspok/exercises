=begin

P:

E:

D:

A:

C: =========================
=end

require "date"

def friday_13th(year)
  counter = 0
  (1..12).each do |month|
    counter += 1 if Date.new(year, month, 13).wday == 5
  end
  counter
end



p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2