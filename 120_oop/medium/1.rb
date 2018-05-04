class Machine
  attr_reader :switch

  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  private

  def switch=(value)
    self.switch = value
  end

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end