require './card.rb'

class Deck
  
  def initialize
    @cards = []
    @discarded = []

    @cards = SUITS.map{ |suit| cards_for(suit)}
                  .flatten
  end

  def draw(number = 1)
    number.times do
      current_card = @cards.shift
      return report_empty_deck if current_card.nil?
      report_drawn(current_card)
      discard(current_card)  
    end
  end

  def shuffle
    @cards = (@cards + @discarded).shuffle
    @discarded = []
  end

  def cheat
    @top_card = @cards[0]
  end

  def next_is_face_card?
    if @top_card.nil?
      raise 'It is against the rules to look at the card before drawing!'
    end
    @top_card.face_card?
  end

  def stack_by(rank)
    @cards = @cards.sort_by { |card| card.rank == rank ? 0 : 1 }
  end

  private 

  SUITS = ['Clubs', 'Diamonds', 'Hearts', 'Spades'].freeze
  RANKS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].freeze

  def cards_for(suit)
    RANKS.map{ |rank| Card.new(rank, suit)}
  end

  def discard(card)
    @discarded.unshift(card)
  end

  def report_empty_deck
    puts 'Empty Deck'
  end

  def report_drawn(card)
    puts "You drew a #{card.description}."
  end
end
