=begin

  input:
  output:
  border cases:
  rules:
  algorithm:

=end

# def merge(arr1, arr2)
#   (arr1 + arr2).uniq
# end

def merge(arr1, arr2)
  new_arr = arr1 + arr2
  return new_arr if arr1.empty? || arr2.empty?
  index = 0
  loop do
    current = new_arr[index]
    while new_arr[index+1..-1].include? current
      new_arr.delete_at(new_arr.rindex(current))
    end
    index += 1
    break if index >= new_arr.size
  end
  new_arr
end

p merge([], [1])
p merge([1, 3, 5], [3, 6, 9])
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]