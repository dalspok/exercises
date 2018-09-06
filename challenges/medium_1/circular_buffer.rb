# new: buffer of length n
#   - edge case ? 0 length

# datatypes/mechanics:
#   - oldest = index of currently oldest item
#   - current = index where new item should be written

# read:
#   - if buffer empty (=item at oldest index is nil) -> throw exception
#   - read oldest value
#     - by returning value at index oldest
#   - delete it from buffer
#     - increment oldest index

# write:
#   - if buffer full: throw exception
#     = if current is not empty
#   - unless nil
#     - write next to newest value (at the current index)
#     - increment current

# write!: as write (by non-full buffer) or overwrite oldest
#   - as write, but without exceptions

class CircularBuffer
  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end

  attr_reader :size, :values
  def initialize(size)
    @size = size
    clear
  end

  def read
    raise BufferEmptyException unless @values[@oldest]
    read_value = @values[@oldest]
    @values[@oldest] = nil
    @oldest = increment(@oldest)
    read_value
  end

  def write(item)
    raise BufferFullException if @values[@current]
    write!(item)
  end

  def write!(item)
    return unless item
    @oldest = increment(@oldest) if @values[@current]
    @values[@current] = item
    @current = increment(@current)
  end

  def clear
    @values = Array.new(size)
    @current = 0
    @oldest = 0
  end

  private

  def increment(counter)
    (counter + 1) % size
  end
end

