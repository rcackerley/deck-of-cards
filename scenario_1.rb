require './deck.rb'

puts <<~EOF

========== SCENARIO 1 =========
        Ready, Set, Draw
===============================
Draw a specified number of times

For each draw, display a message with the drawn card
e.g. You drew a 'K of clubs'

Begin!

EOF

# here's some code to help you get started
deck = Deck.new
deck.shuffle
