class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def description
    "#{@rank} of #{@suit}"
  end

  def face_card?
    FACE_CARDS.include?(@rank)
  end

  private

  FACE_CARDS = ['J', 'Q', 'K', 'A']
end
