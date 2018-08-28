class Trinary
  attr_reader :value
  BASE = 3

  def initialize(input_value)
    @value = valid?(input_value) ? input_value : "0"
  end

  def to_decimal
    values_numerical = value.chars.map(&:to_i)
    transformed_values = values_numerical.reverse.map.with_index {|num, idx| num * (BASE ** idx)}
    transformed_values.sum
  end

  def valid?(input_value)
    !input_value.match(/[^012]/)
  end
end

p Trinary.new("102012").to_decimal