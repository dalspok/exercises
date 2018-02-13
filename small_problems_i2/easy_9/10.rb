=begin

P:

E:

D:

A:

C: =========================
=end


def buy_fruit(arr)
  arr1 = []
  arr.each do |name, number|
    number.times { |_| arr1 << name  }
  end
  arr1
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]