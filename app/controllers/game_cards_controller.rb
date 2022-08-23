class GameCardsController < ApplicationController

    wrap_parameters format: []

    #POST /game_cards
    def create
        gamecard = GameCard.create(gamecard_params)
        render json: gamecard, status: :created
    end

    #PATCH /game_cards
    def update 
        gamecard = GameCard.find_by(id: params[:id])
        if gamecard
            gamecard.update(gamecard_params)
            render json: gamecard
        else 
            render json: {error: 'GameCard not found'}, status: :not_found
        end
    

    end

    private

    def gamecard_params
        params.permit(:title, :image, :level_data, :note, :user_id, :game_id )
    end
end

