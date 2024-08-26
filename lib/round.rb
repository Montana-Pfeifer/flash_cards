class Round
    attr_reader :deck, :turn, :current_card_index

    def initialize(deck)
            @deck = deck
            @turn =[]
            @current_card_index = 0
    end

    def current_card
            @deck.cards[@current_card_index]
    end

    def take_turn(guess)
            current_card = self.current_card
            turn = Turn.new(guess, current_card)
            @turns << turn
            @current_card_index += 1 if @current_card_index < @deck.count - 1
            turn
    end

    def

end