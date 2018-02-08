=begin

P:
-input: arr
-output: the same arr (identical), MUT (reverse)

E:

D:

A:
-using .times: iterate through array and move last item to first, second
...positon (using index, 0-based)

- a, b, c, d # move last to 0
- D, a, b, c # move last to 1
- D, C, a, b # move last to 2
- D, C, B, a # stop
= size-1 times

C: =========================
=end

def reverse!(arr)
  (arr.size-1).times do |index|
    arr.insert(index, arr.pop)
  end
  arr
end


list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list == []