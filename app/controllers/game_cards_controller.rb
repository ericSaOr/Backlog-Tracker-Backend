class GameCardsController < ApplicationController

    wrap_parameters format: []

    #POST /games
    def create
        gamecard = GameCard.create(gamecard_params)
        render json: gamecard, status: :created
    end

    private

    def gamecard_params
        params.permit(:title, :image, :level_data, :note, :user_id, :game_id )
    end
end

