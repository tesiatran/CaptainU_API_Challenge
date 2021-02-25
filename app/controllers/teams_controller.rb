class TeamsController < ApplicationController
  def show # GET one team's data
    render json: @team
  end
end
