class TournamentsController < ApplicationController
  def index
    render json: tournaments.all
  end
end
