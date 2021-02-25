class TeamsController < ApplicationController
  def show # GET /teams/{team_id}
    render json: @team
  end
end
