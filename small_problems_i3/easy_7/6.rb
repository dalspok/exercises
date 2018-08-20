
def staggered_case(str)
  final_str = ""
  flag_uppercase = true
  str.each_char do |char|
    if char =~ /[a-zA-Z]/
      final_str << (flag_uppercase ? char.upcase : char.downcase)
      flag_uppercase = !flag_uppercase
    else
      final_str << char
    end
  end
  final_str
end


p staggered_case('I Love Launch School!')

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'