class NotesController < ApplicationController
  def create # POST new note for assessment
    @notes = Note.new(note_params)
    render json: @notes
  end

  def update # PATCH existing note for assessment
    @notes.update(note_params)
  end

  def destroy # DELETE a specific note
    @notes.destroy
  end

  def note_params
    params.permit(:user_id, :note, :assessment_id, :created_at, :updated_at)
end
