require './deck.rb'

puts <<~EOF

========== SCENARIO 2 =========
          Cheat to Win
===============================
Keep drawing cards unless the next card is a face card (J, Q, K, A)

Begin!

EOF

deck = Deck.new
deck.shuffle
