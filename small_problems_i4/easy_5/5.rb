
def cleanup(str)
  new_str = str.gsub(/[^a-zA-Z]/, " ")
  new_str.gsub!("  ", " ") while new_str.include?("  ")
  new_str
end

p cleanup("---what's my +*& line?") == ' what s my line '