require_relative './lib/card'
require_relative './lib/turn'
require_relative './lib/deck'
require_relative './lib/round'

#first we need cards
card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card1 = Card.new("Where is the statue of liberty located?", "New York", :Geography)
card2 = Card.new("What galaxy are we in?", "Milky Way", :Astronomy)
card3 = Card.new("What is the most dangerous whale?", "Orca", :Animals)
card4 = Card.new("What year was the Declaration of Independence made?", "1776", :History)

#second we need to make a deck

deck = Deck.new([card, card1, card2, card3, card4])

#third we need to make the round witht the deck we created

round = Round.new(deck)

round.start

