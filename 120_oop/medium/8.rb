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
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other)
    self.rank_to_value <=> other.rank_to_value
  end

  def ==(other)
    (self <=> other) == 0
  end

  protected

  def rank_to_value
    return case rank
            when "Ace" then 14
            when "King" then 13
            when "Queen" then 12
            when "Jack" then 11
            else rank
            end
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.
