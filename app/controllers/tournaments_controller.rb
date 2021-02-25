class TournamentsController < ApplicationController
  def index # GET array of tournaments
    @tournament = Tournament.all
    render json: @tournament
  end

  def one_tournament # GET one tournament
    @tournament = Tournament.find_by(name: params[:name])
    render json: @tournament
  end

  def tournament_events # GET all events in a tournament -- maybe
    @tournament = Tournament.find(:events)
    render json: @tournament
  end

  def tournament_teams # GET array of all teams for a tournament -- maybe
    @tournament = Tournament.find(:teams)
    render json: @tournament
  end
end
