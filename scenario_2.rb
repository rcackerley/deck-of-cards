require './deck.rb'

puts <<~EOF

========== SCENARIO 2 =========
          Cheat to Win
===============================
Keep drawing cards unless the next card is a face card (J, Q, K, A)

Begin!

EOF

=begin
I did not implement this, but one thought that I toyed around with was 
#pulling the cheat method out of the Deck class. 'Cheat' feels like it would belong to a 
player class. If this were an exercise on system design, I would consider monkey patching Deck inline
with the cheat method to accomplish this exercise, and not have it be built into the Deck class.
=end 

deck = Deck.new
deck.shuffle
deck.cheat

until deck.next_is_face_card? 
  deck.draw
  deck.cheat
end
