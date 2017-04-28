
=begin

  rules: every other char upcase, downcase, ignore non-aplhanum

  alg:
  map, using flag, switching: if change was made

=end

# def staggered_case(str)
#   to_up = false
#   new_arr = str.chars.map do |char|
#     if char.match(/[A-Za-z]/)
#       to_up = !to_up
#       to_up ? char.upcase : char.downcase
#     else char
#     end
#   end
#   new_arr.join
# end

def staggered_case(str)
  to_up = false
  new_arr = str.chars.map do |char|
    next char unless char.match(/[A-Za-z]/)
    to_up = !to_up
    to_up ? char.upcase : char.downcase
  end
  new_arr.join
end


p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'