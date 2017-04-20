def word_sizes(str)
  letters_str = str.chars.select {|char| (("a".."z").include? char.downcase) || char == " "}.join
  arr_of_sizes = letters_str.split.map(&:size)
  freq_hsh = {}
  until arr_of_sizes.empty?
    number = arr_of_sizes.pop
    freq_hsh.has_key?(number) ? freq_hsh[number] += 1 : freq_hsh[number] = 1
  end
  freq_hsh
end




p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}