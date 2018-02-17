=begin

P:

E:

D:

A:

C: =========================
=end

text = ""
File.open("longest_sentence_1.txt", "r") { |file| text = file.read }
text.gsub!("\n", " ")
text_array = text.split(/[.!?]/)
longest_sentence = text_array.max_by do |sentence|
  sentence.split.size
end

puts longest_sentence
puts longest_sentence.split.size