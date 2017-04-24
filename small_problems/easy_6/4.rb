=begin

  input: arr
  output: the same arr, reversed elements
  border cases: [] => [], ? [[]]
  rules:
  algorithm:
    - traversing through arr (index)
    - take i-element, unshift
    - return
=end



def reverse!(list)
  index = 0
  while index < list.size
    list.unshift(list.delete_at(index))
    index += 1
  end
  list
end




list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!([]) # => []
p list == []