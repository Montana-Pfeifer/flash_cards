class Round
    attr_reader :deck, :turns, :current_card_index

        def initialize(deck)
                @deck = deck
                @turns =[]
                @current_card_index = 0
        end

            def current_card
                @deck.cards[@current_card_index]
            end

                def take_turn(guess)
                current_card = self.current_card
                turn = Turn.new(guess, current_card)
                @turns << turn
                @current_card_index += 1
                turn
                end

                        def number_correct
                         @turns.count { |turn| turn.correct? }
                        end

         def number_correct_by_category(category)
        @turns.count { |turn| turn.correct? && turn.card.category == category}
         end

                def percent_correct
                (number_correct.to_f / @turns.count) * 100
                end

                         def percent_correct_by_category(category)
                        total_in_category + @turns.count { |turn| turn.card.category == category }
                        correct_in_category = number_correct_by_category(category)
                        (correct_in_category.to_f / total_in_category) * 100
                        end

    def start #Begins round
        puts "Welcome to Flash Cards"
        puts "You have #{deck.count} cards in your deck."

    #the while will loop through until turns count is less than deck count
    while @turns.count < @deck.count
        puts "Question #{@turns.count + 1} of #{deck.count}"
        puts "Question: #{current_card.question}"
        print "Your answer:"
        guess = gets.chomp
        turn = take_turn(guess)

        if turn.correct?
        puts "Correct!"
        else
        puts "Incorrect."
        end
    end

    puts "GAME OVER! you had #{number_correct} correct guesses out of #{deck.count}."
    puts "Your score: #{percent_correct.round(2)}%"
    end
end