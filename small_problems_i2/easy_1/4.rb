=begin

P:

input: arr of ?str
output: hsh (printout puts)

? str
? empty arr

E:
D:
A:

- make new hsh with 0 as default
- iterate arr using .each method
  - for any value +1 (item = key)

- dtto, but with basic iteration:
  - set counter (0)
  - looping throuth array (while counter < arr size)
  - adding to hsh - see above
  - incrementing counter


C: =================================
=end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# def count_occurrences(arr)
#   hsh = Hash.new(0)
#   arr.each do |item|
#     hsh[item] += 1
#   end
#   hsh.each { |key, value| puts "#{key} => #{value}"  }
# end

def count_occurrences arr
  hsh = {}
  counter = 0
  while counter < arr.size
    if hsh.key? arr[counter]
      hsh[arr[counter]] += 1
    else
      hsh[arr[counter]] = 1
    end
    counter += 1
  end
  counter = 0
  key_arr = hsh.keys
  while counter < key_arr.size
    puts key_arr[counter] + " => " + hsh[key_arr[counter]].to_s
    counter += 1
  end
end




count_occurrences(vehicles)