require './lib/turn'
require './lib/card'


    RSpec.describe Turn do
######## First tests of turn class (card)--------------------------------------------------     
        it 'create a Turn instance with a card' do

            card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            turn = Turn.new("Juneau", card)

            expect(turn).to be_instance_of(Turn)
            expect(turn.card).to eq(card)
            expect(turn.guess).to eq(card.answer)
        end
        
            it 'checks if guess is correct' do
                card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
                turn = Turn.new("Juneau", card)

                expect(turn.correct?).to be true
                expect(turn.feedback).to eq("Correct!")
            end

                it 'checks if answer is incorrect' do
                    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
                    turn = Turn.new("Paris", card)
                
                    expect(turn.correct?).to be false
                    expect(turn.feedback).to eq("Incorrect.")
                end
    
    
######## Tests for card1

        it 'create a Turn instance with card' do

            card = Card.new("Where is the statue of liberty located?", "New York", :Geography)
            turn = Turn.new("New York", card)

            expect(turn).to be_instance_of(Turn)
            expect(turn.card).to eq(card)
            expect(turn.guess).to eq(card.answer)
        end

            it 'checks if the guess is correct' do
                card = Card.new("Where is the statue of liberty located?", "New York", :Geography)
                turn = Turn.new("New York", card)
            
                expect(turn.correct?).to be true
                expect(turn.feedback).to eq("Correct!")
            end

                it 'checks if answer is incorrect' do
                    card = Card.new("Where is the statue of liberty located?", "New York", :Geography)
                    turn = Turn.new("Denver", card)

                expect(turn.correct?).to be false
                expect(turn.feedback).to eq ("Incorrect.")
                end

######### tests for card2
                it 'create a Turn instance with card' do

                    card = Card.new("What galaxy are we in?", "Milky Way", :Astronomy)
                    turn = Turn.new("Milky Way", card)

                    expect(turn).to be_instance_of(Turn)
                    expect(turn.card).to eq(card)
                    expect(turn.guess).to eq(card.answer)
                end

end
