


def enter_word(name)
  print "Enter #{name}: "
  gets.chomp
end

noun = enter_word("a noun")
verb = enter_word("a verb")
adjective = enter_word("an adjective")
adverb = enter_word("an adverb")

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"