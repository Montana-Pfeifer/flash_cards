require './lib/deck'
require './lib/card'

RSpec.describe Deck do

    it 'can hold multiple cards' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card1 = Card.new("Where is the statue of liberty located?", "New York", :Geography)
        card2 = Card.new("What galaxy are we in?", "Milky Way", :Astronomy)
        card3 = Card.new("What is the most dangerous whale?", "Orca", :Animals)
        card4 = Card.new("What year was the Declaration of Independence made?", "1776", :History)

        deck = Deck.new([card, card1, card2, card3, card4])

        expect(deck.cards).to eq([card, card1, card2, card3, card4])
        expect(deck.count).to eq(5)
    end
end