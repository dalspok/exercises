vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def display(counter)
  counter.each { |key, value| puts "#{key} => #{value}"  }
end


# def count_occurrences(vehicles)
#   counter = {}
#   vehicles.each do |vehicle|
#     if counter[vehicle].nil?
#       counter[vehicle] = 1
#     else
#       counter[vehicle] += 1
#     end
#   end
#   display counter
# end

def count_occurrences(vehicles)
  counter = {}
  vehicles.each do |vehicle|
    counter[vehicle] = vehicles.count(vehicle)
  end
  display counter
end


count_occurrences(vehicles)
