class GamesController < ApplicationController
    wrap_parameters format: []

    #POST /games
    def create
        game = Game.create(game_params)
        render json: game, status: :created
    end

    private

    def game_params
        params.permit(:title, :image)
    end
end
