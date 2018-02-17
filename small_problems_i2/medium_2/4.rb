=begin

P:

E:

D:

A:

C: =========================
=end


def balanced?(str)
  counter = 0
  str.each_char do |char|
    if char == "("
      counter += 1
    elsif char == ")"
      counter -=1
    end
    return false if counter < 0
  end
  counter == 0
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false