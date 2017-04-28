
=begin

  rules: every other char (based on index) upcase, downcase

  alg:
  (1)
  - -> arr
  - each_with_index: odd - upcase, even - downcase
  - join

  (2) map_with_index


=end

# def staggered_case(str)
#   new_str = ""
#   str.chars.each_with_index {|char, index| new_str.concat(index.even? ? char.upcase
#   : char.downcase)}
#   new_str
# end

def staggered_case(str)
  new_arr = str.chars.map.with_index do |char, index|
    index.even? ? char.upcase : char.downcase
  end
  new_arr.join
end



p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'