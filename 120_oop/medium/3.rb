class Student
  attr.accessor :name, :year
  attr.reader :parking
  def initialize(name, year, parking)
    @name = name
    @year = year
    @parking = parking
  end
end

class Graduate < Student
  attr_writer :parking
  def initialize(name, year, parking)
    super
  end
end

class Undergraduate < Student
  def initialize(name, year)
    super(name, year, false)
  end
end