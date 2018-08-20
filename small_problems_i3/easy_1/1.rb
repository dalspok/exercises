# def repeat (string, repetition)
#   repetition.times {|_| puts string}
# end

# def repeat(string, repetition)
#   for _ in (1..repetition)
#     puts string
#   end
# end


def repeat(string, repetition)
  counter = 0
  until counter == repetition
    puts string
    counter += 1
  end

end

repeat('Hello', 3)