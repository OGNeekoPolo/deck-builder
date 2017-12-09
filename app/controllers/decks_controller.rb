class DecksController < ApplicationController
    def index
        @decks = Deck.all
    end
    
    def new
        @deck = Deck.new
    end

    def create
        
    end

    def show
        
    end

    def edit
        
    end

    def update
        
    end

    def destroy
        
    end
end
