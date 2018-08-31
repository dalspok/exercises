items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | *items , last |
  puts items.join(", ")
  puts last
end

puts

gather(items) do | first, *items , last |
  puts first
  puts items.join(", ")
  puts last
end

puts

gather(items) do | first, *items |
  puts first
  puts items.join(", ")
end

puts

gather(items) do | first, second, third, fourth |
  puts [first, second, third, fourth].join(", ")
end