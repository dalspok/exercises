# grade school

# #grade => arr of names or empty arr (sorted)
# #to_h => hsh of sorted keys and names (arr of names)
# #add(name, grade) => add into hsh

class School

  def initialize
    @roster = Hash.new {|_,_| Array.new}
  end

  def add(name, grade_number)
    @roster[grade_number] <<= name
    @roster[grade_number].sort!
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def to_h
    @roster.sort.to_h
  end

end