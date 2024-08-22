require 'pry'

class Card

        attr_reader :question, :answer, :catagory

    def initialize (question, answer, catagory)
        @question = question
        @answer = answer
        @catagory = catagory
    end

    def question
        "What is the capital of Alaska?"
    end


    def answer
        "Juneau"
    end

    def category
       catagory = :Geography
    end
end

