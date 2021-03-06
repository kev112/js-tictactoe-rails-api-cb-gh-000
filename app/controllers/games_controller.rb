class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games
  end

  def show
    @game = Game.find(game_params)
    render json: @game
  end

  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def update
    @game.update(game_params)
    render json: @game
  end

  private

  def game_params
    params.permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
