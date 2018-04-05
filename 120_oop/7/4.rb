class Transform
  def self.lowercase(string)
    string.downcase
  end

  def initialize(string)
    @value = string
  end

  def uppercase
    @value.upcase
  end
end


my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')