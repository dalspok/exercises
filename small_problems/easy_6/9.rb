=begin

  input: arr
  output true/false
  border cases: [], type val?
  alg:
    (1)
    - index (is x nil)

    (2)
    - each with object, comparing

    (3)
    - select
=end

# def include?(arr, lookup)
#   return !!arr.index(lookup)
# end

# def include?(arr, lookup)
#   arr.each_with_object(lookup) {|num, object| return true if num == object}
#   false
# end

def include?(arr, lookup)
  !arr.select {|num| num == lookup}.empty?
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false