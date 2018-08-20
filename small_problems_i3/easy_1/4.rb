
# def count_occurrences(vehicles)
#   non_repeating_arr = vehicles.uniq
#   for non_repeating_element in non_repeating_arr
#     puts "#{non_repeating_element} => #{vehicles.count(non_repeating_element)}"
#   end
# end

def count_occurrences(vehicles)
  occurrences = Hash.new(default=0)
  vehicles.each do |vehicle|
    unless occurrences.has_key?(vehicle)
      occurrences[vehicle] = vehicles.count(vehicle)
    end
  end

  occurrences.each {|key, value| puts "#{key} => #{value}"}
end



vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)