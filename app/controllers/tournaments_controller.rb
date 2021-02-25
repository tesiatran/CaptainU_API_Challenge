class TournamentsController < ApplicationController
  def index
    @tournament = Tournament.all
    render json: @tournament
  end

  def one_tournament
    @tournament = Tournament.find_by(name: params[:name])
    render json: @tournament
  end

  def tournament_events
    @tournament = Tournament.includes(:events)
    render json: @tournament
  end

  def tournament_teams
    @tournament = Tournament.includes(:teams)
    render json: @tournament
  end
end
