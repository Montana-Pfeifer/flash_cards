require './lib/card'

#Begining of Card tests (original card)-------------------------------------

RSpec.describe Card do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card).to be_instance_of(Card)
  end

  it 'has a question' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.question).to eq("What is the capital of Alaska?")
  end

  it 'has an answer' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.answer).to eq("Juneau")
  end

  it 'has a category' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    
    expect(card.category).to eq(:Geography)
    
  end
  
  # card1 tests Start:------------------------------------------------------

    it 'exists' do
      card1 = Card.new("Where is the statue of liberty located?", "New York", :Geography)
    
      expect(card1).to be_instance_of(Card)
    end

    it 'has a question' do
      card1 = Card.new("Where is the statue of liberty located?", "New York", :Geography)

      expect(card1.question).to eq("Where is the statue of liberty located?")
   end

    it 'has an answer' do
      card1 = Card.new("Where is the statue of liberty located?", "New York", :Geography)

      expect(card1.answer).to eq("New York")
    end

    it 'has a catagory' do
      card1 = Card.new("Where is the statue of liberty located?", "New York", :Geography)

      expect(card1.category).to eq(:Geography)
    end

######card2 Tests begin----------------------------------------------------

      it "exists" do
        card2 = Card.new("What galaxy are we in?", "Milky Way", :Astronomy)

        expect(card2).to be_instance_of(Card)
      end

      it 'has a question' do
        card2 = Card.new("What galaxy are we in?", "Milky Way", :Astronomy)

        expect(card2.question).to eq("What galaxy are we in?")
      end

      it 'has an answer' do
        card2 = Card.new("What galaxy are we in?", "Milky Way", :Astronomy)

        expect(card2.answer).to eq("Milky Way")
      end

      it 'has a category' do
        card2 = Card.new("What galaxy are we in?", "Milky Way", :Astronomy)

        expect(card2.category).to eq(:Astronomy)
      end

######## beginning of card3 tests-----------------------------------------------
        
        it 'exists' do
          card3 = Card.new("What is the most dangerous whale?", "Orca", :Animals)

          expect(card3).to be_instance_of(Card)
        end

        it 'has a question' do
          card3 = Card.new("What is the most dangerous whale?", "Orca", :Animals)

          expect(card3.question).to eq("What is the most dangerous whale?")
        end

        it 'has an answer' do
          card3 = Card.new("What is the most dangerous whale?", "Orca", :Animals)

          expect(card3.answer).to eq("Orca")
        end

        it 'has a category' do
          card3 = Card.new("What is the most dangerous whale?", "Orca", :Animals)

          expect(card3.category).to eq (:Animals)
        end

########## Start Card4 Tests--------------------------------------------------------       

          it 'exists' do
            card4 = Card.new("What year was the Declaration of Independence made?", "1776", :History)

            expect(card4).to be_instance_of(Card)
          end

          it 'has a question' do
            card4 = Card.new("What year was the Declaration of Independence made?", "1776", :History)

            expect(card4.question).to eq("What year was the Declaration of Independence made?")
          end

          it 'has an answer' do
            card4 = Card.new("What year was the Declaration of Independence made?", "1776", :History)

            expect(card4.answer).to eq ("1776")
          end
          
end
