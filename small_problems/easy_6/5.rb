=begin

  input: arr
  output: new_arr, reversed elements
  border cases: [] => []
  rules:
  algorithm:
    (var 1)
    - traversing + push to other array
    (var 2)
    - each_with_object
    (var 3)
    - clone, each_with_index, assign with (-(index + 1)

=end

# def reverse(arr)
#   dup_arr = []
#   arr.size.times {|index| dup_arr.unshift(arr[index])}
#   dup_arr
# end

# def reverse(arr)
#   arr.each_with_object([]) {|item, new_arr| new_arr.unshift item}
# end

def reverse(arr)
  dup_arr = arr.clone
  arr.each_with_index {|item, index| dup_arr[-(index+1)] = item}
  dup_arr
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true