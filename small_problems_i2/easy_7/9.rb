=begin

P:

E:

D:

A:

C: =========================
=end


# def multiply_all_pairs(arr1,arr2)
#   arr1.product(arr2).map { |pair| pair.reduce(:*)}.sort
# end

# def multiply_all_pairs(arr1, arr2)
#   product = []

#   arr1.each do |item1|
#     arr2.each do |item2|
#       product << item1 * item2
#     end
#   end
#   product.sort
# end

def multiply_all_pairs(arr1, arr2)
  product = []
  counter1 = 0
  while counter1 < arr1.size
    counter2 = 0
    while counter2 < arr2.size
      product << arr1[counter1] * arr2[counter2]
      counter2 += 1
    end
    counter1 += 1
  end
  product.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
