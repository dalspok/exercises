=begin

P:
-input: int (num of switches = num of rep)
-output: arr of "on"

first: 1,2,3,4...n
second: 2,4,6...n
: 3,6,9

E:

D:

A:
- n-times: iterate throuhg arr of 0s, size n:
  - use counter x (start: 1)
  - start with n[X-1], switch every Xth (chagne 0 => 1)
  - increment counter by 1
- return new array, where values = indexes of above arrays, where values = 1
  - iteratare arr (with index), when 1, add index to arr1

C: =========================
=end


def lights(n)
  arr_of_states = Array.new(n, 0)
  n.times do |repetition_num|
    arr_of_states.map!.with_index do |item, ind|
      (ind + 1) % (repetition_num + 1) == 0 ? switch_item(item) : item
    end
  end
  arr_of_switched_on_num(arr_of_states)
end

def arr_of_switched_on_num(arr_of_states)
  arr1 = []
  arr_of_states.each_with_index do |item, ind|
    arr1 << (ind + 1) if item == 1
  end
  arr1
end

def switch_item(num)
  num == 0 ? 1 : 0
end


p lights(5)
p lights(5) == [1,4]
p lights(10) == [1,4,9]