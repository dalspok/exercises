
def count_occurrences(vehicles)
  counter = Hash.new(0)
  vehicles.each {|vehicle| counter[vehicle] += 1}
  counter.each {|vehicle, count| puts "#{vehicle} => #{count}"}
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
puts "#jedna"