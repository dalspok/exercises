require "pry"

class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name, :adopted_pets

  def initialize(name)
    @name = name
    @adopted_pets = []
  end

  def number_of_pets
    @adopted_pets.size
  end

  def adopt(pet)
    @adopted_pets << pet
  end
end

class Shelter

  def initialize
    @owner_db = []
  end

  def adopt(adopter, pet)
    @owner_db << adopter unless @owner_db.include? adopter
    adopter.adopt(pet)
  end

  def print_adoptions
    @owner_db.each do |owner|
      puts "#{owner.name} has adopted following pets:"
      owner.adopted_pets.each {|pet| puts pet}
      puts
    end
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."


