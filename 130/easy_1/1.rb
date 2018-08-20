class Tree
  include Enumerable

  def each

  end
end

a = Tree.new
a.each {|_| puts "OK"}