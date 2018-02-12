=begin

P:

E:

D:

A:

C: =========================
=end


words_dic = {}
word_types = %w(noun verb adjective adverb)
word_types.each do |word_type|
  puts "Enter a #{word_type}"
  words_dic[word_type] = gets.chomp
end

puts "Do you #{words_dic["verb"]} your #{words_dic["adjective"]} #{words_dic["noun"]} \
#{words_dic["adverb"]}? That's hillarious!"
