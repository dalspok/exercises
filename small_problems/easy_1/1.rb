def repeat(string, repeat)
  repeat.times {puts string}
end

repeat("Hello", 3)

# ---2---

# def repeat(string, repeat)
#   until repeat == 0
#     puts string
#     repeat -= 1
#   end
# end

# repeat("Hello", 3)