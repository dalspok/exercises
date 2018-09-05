# 1| 00001 = wink # 1
# 2| 00010 = double blink # 2
# 4| 00100 = close your eyes # 4
# 8| 01000 = jump # 8
# 16|10000 = Reverse the order of the operations in the secret handshake. #16

# 9| 01001 -> wink, jump (1, 8)
# 25|11001 -> jump, wink

# edge cases:
# ? number > 32

# Rules:
# - for last 4 chars:
#   - read binary string from right to left
#   - for each 1 - do the movement
# - if first char is 1, do the above in reverse order

# A:
# - check input string - if incorrect -> 0
# - if input string is in num format (int) -> convert to binary
# - convert binary to string with leading "0"s (->array)
      # - 10 -> 00010
      # - 1 -> 00001
## - if first binary == 1 : reverse last 4 chars
# - for each chars (reverse) in binary_string
#   - if 1 -> movement : map 1->movements (using lookup table for indexes)
#     - 0 -> nil
#   - compact array and return


class SecretHandshake
  HANDSHAKES = ["wink", "double blink", "close your eyes", "jump"]

  def initialize(input)
    @values = convert(input)
  end

  def commands
    handshakes = @values.reverse.map.with_index do |value, index|
      value == "1" ? HANDSHAKES[index] : nil
    end
    handshakes.compact!
    handshakes.reverse! if @values[0] == "1"
    handshakes
  end

  private

  def convert(input_value)
    corrected_value = case input_value
                        when /\A[01]*\Z/ then input_value
                        when Integer then input_value.to_s(2)
                        else "0"
                      end
    corrected_value.rjust(5, "0").chars
  end
end



