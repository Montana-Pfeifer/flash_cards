require 'pry'

class Card

        attr_reader :question, :answer, :category

    def initialize (question, answer, category)
        @question = question
        @answer = answer
        @category = category
    end

    def question
        @question
    end


    def answer
        @answer
    end

    def category
       @category
    end

end

card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card1 = Card.new("Where is the statue of liberty located?", "New York", :Geography)
card2 = Card.new("What galaxy are we in?", "Milky Way", :Astronomy)
card3 = Card.new("What is the most dangerous whale?", "Orca", :Animals)