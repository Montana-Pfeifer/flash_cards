class Round
    attr_reader

    def initialize(deck)
        @deck = deck
        @turn =[]
        @current_card_index = 0
    end
def current_card
    @deck.cards[current_card_index]
end



end