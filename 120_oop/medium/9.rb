require "pry"

class PokerHand
  def initialize(deck)
    @hand = []
    5.times { |_| @hand << deck.draw  }
  end

  def print
    puts @hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?
    flush? && straight? && (@hand.max.rank == "Ace")
  end

  def straight_flush?
    flush? && straight?
  end

  def four_of_a_kind?
    count_of_values.include?(4)
  end

  def full_house?
    count_of_values.include?(2) && count_of_values.include?(3)
  end

  def flush?
    count_of_suits.include?(5)
  end

  def straight?
    values = @hand.map(&:value).sort
    until values.size == 1
      return false unless (values[1] - values[0] == 1)
      values.shift
    end
    true
  end

  def three_of_a_kind?
    count_of_values.include? 3
  end

  def two_pair?
    count_of_values.count(2) == 2
  end

  def pair?
    count_of_values.include? 2
  end

  def high_card?
    @hand.max.value > 10
  end

  def count_of_suits
    suits_in_hand = @hand.map {|card| card.suit}
    uniq_suits = suits_in_hand.uniq
    counts = uniq_suits.map { |suit| suits_in_hand.count(suit)}
    counts
  end

  def count_of_values
    values_in_hand = @hand.map {|card| card.value}
    uniq_values = values_in_hand.uniq
    counts = uniq_values.map { |value| values_in_hand.count(value)}
    counts
  end

end


class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset_deck
  end

  def reset_deck
    @deck = RANKS.product(SUITS).shuffle
    @deck.map! { |(rank, suit)| Card.new(rank, suit)  }
  end

  def draw
    card_to_draw = @deck.pop
    reset_deck if @deck.empty?
    card_to_draw
  end
end


class Card
  include Comparable
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other)
    self.value <=> other.value
  end

  def ==(other)
    (self <=> other) == 0
  end

  def value
    return case rank
            when "Ace" then 14
            when "King" then 13
            when "Queen" then 12
            when "Jack" then 11
            else rank
            end
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])

puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'