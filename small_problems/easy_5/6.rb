
=begin

  input: str
  output: hsh
  rules: word = anything between spaces
  border: "" = {}
    " "?

  algorithm
    - split: => arr
    - map: length => arr of lenths
    - iterate
      - var 1 - iteration, using [key] update/assignment
      - var 2 - take next -> count -> delete -> end when empty
    - return hsh
=end


# def word_sizes(str)
#   arr_of_sizes = str.split.map(&:size)
#   arr_of_sizes.each_with_object({}) do |frequency, hsh|
#     hsh.include?(frequency) ? hsh[frequency] += 1 : hsh[frequency] = 1
#   end
# end

def word_sizes(str)
  arr_of_sizes = str.split.map(&:size)
  freq_hsh = {}
  until arr_of_sizes.empty?
    number = arr_of_sizes.pop
    freq_hsh.has_key?(number) ? freq_hsh[number] += 1 : freq_hsh[number] = 1
  end
  freq_hsh
end


p word_sizes('Four score and seven.')

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}