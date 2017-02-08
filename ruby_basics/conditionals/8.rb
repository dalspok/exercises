status = ['awake', 'tired'].sample
command = if status == "awake"
  "be productive"
else
  "go to sleep"
end

puts command