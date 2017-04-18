def get_middle(s)
  size = s.size
  size.odd? ? s[size / 2] : s[(size / 2),2]
end

p get_middle("ahoj")