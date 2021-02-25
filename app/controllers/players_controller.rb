class PlayersController < ApplicationController
  def index # GET list of all players
    @players = Player.all
    render json: @player
  end

  def show # GET individual player
    render json: @player
  end

  def player_assessments # GET all assessments for given player -- maybe
    @player = Player.find(:assessments)
    render json: @player
  end
end
