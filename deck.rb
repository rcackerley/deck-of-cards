require './card.rb'

class Deck
  
  def initialize
    @cards = []
    @discarded = []

    @cards = SUITS.map{ |suit| cards_for(suit)}
                  .flatten
  end

  def draw
    # get the next card and remove it from the deck
  end

  def shuffle
    @cards = (@cards + @discarded).shuffle
    @discarded = []
  end

  def cheat
    # see the next card, but don't discard it
  end

  private 

  SUITS = ['Clubs', 'Diamonds', 'Hearts', 'Spades'].freeze
  RANKS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].freeze

  def cards_for(suit)
    RANKS.map{ |rank| Card.new(rank, suit)}
  end
end
