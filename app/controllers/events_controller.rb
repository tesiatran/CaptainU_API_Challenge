class EventsController < ApplicationController
  def show # GET one event's data
    render json: @event
  end
end
