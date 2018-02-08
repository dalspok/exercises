

def reverse(arr)
  arr1 = []
  arr.each { |item| arr1.unshift item  }
  arr1

end



reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b c d e)) == %w(e d c b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true