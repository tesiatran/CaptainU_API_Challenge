class AssessmentsController < ApplicationController
  def create # POST assessment by authenticated user for a player
    @assessment = Assessment.new(assessment_params)
    render json: @assessment
  end

  def show # GET a specific assessment
    render json: @assessment
  end

  def update # PATCH a speficic assessment
    @assessment.update(user_params)
    render json: @assessment
  end

  def destroy # DELETE a specific assessment -- and all notes..?
    @assessment.destroy
    @notes.destroy
  end

  def assessment_params
    params.permit(:rating, :user_id, :tournament_id, :player_id, :assessment_type, :created_at, :updated_at)

  ## Definitely missing a lot here, especially concerning @user
end
