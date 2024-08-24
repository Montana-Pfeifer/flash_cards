require './lib/card'


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
    card = Card.new("What is the capital of Alaska?", "Juneau", "Geography")
     expect(card.category).to eq(:Geography)
    
  end
  
  it 'exists' do
    card1 = Card.new("Where is the statue of liberty located?", "New Tork", :Geography)
    
    expect(card1).to be_instance_of(Card)
  end

  it 'has a questiion' do
    card1 = Card.new("Where is the statue of liberty located?", "New Tork", :Geography)

    expect(card1.question).to eq("Where is the statue of liberty located?")
  end

end
