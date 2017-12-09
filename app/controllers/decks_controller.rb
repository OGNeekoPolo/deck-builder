# create_table "decks", force: :cascade do |t|
#     t.string "title"
#     t.text "description"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "deck_brand"
#     t.boolean "ready_for_play", default: false
#   end


class DecksController < ApplicationController
    before_action :set_deck, only: [:show, :edit, :update, :destroy]
    
    def index
        @decks = Deck.all
    end
    
    def new
        @deck = Deck.new
    end

    def create
        @deck = Deck.new(deck_params)

        if @deck.save
            redirect_to decks_path
        else
            render 'new'
        end
    end

    def show
        
    end

    def edit
        
    end

    def update
        if @deck.update(deck_params)
            redirect_to @deck
        else
            render 'edit'            
        end
    end

    def destroy
        @deck.destroy
        redirect_to decks_path
    end

    private
        def deck_params
            params.require(:deck).permit(:deck_brand, :title, :description)
        end

        def set_deck
            @deck = Deck.find(params[:id])
        end
end
