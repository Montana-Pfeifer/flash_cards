require './lib/turn'
require './lib/card'


    RSpec.describe Turn do
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
    
    
end
