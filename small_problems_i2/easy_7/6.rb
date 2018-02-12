=begin

P:

E:

D:

A:

C: =========================
=end



def staggered_case str
  lower = true
  arr1 = str.chars.map do |char|
    lower = (lower ? false : true) if char.match /[a-zA-Z]/
    lower ? char.downcase : char.upcase
  end
  arr1.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'