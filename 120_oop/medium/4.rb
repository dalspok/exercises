require "pry"

class CircularQueue

  def initialize(size)
    @buffer = Array.new(size)
    reset_recent
  end

  def enqueue(item)
    @recent = increment(@recent)
    @buffer[@recent] = item
  end

  def dequeue
    if @buffer.compact == []
      reset_recent
      return nil
    end

    oldest = increment(@recent)
    until @buffer[oldest] || oldest == @recent
      oldest = increment(oldest)
    end
    item = @buffer[oldest]
    @buffer[oldest] = nil
    item
  end

  private

  def reset_recent
    @recent = @buffer.size - 1
  end

  def increment(value)
    value = (value + 1) % @buffer.size
  end
end


queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil