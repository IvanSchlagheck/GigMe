class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.venue = current_user.venue
    if @event.save
      redirect_to venue_path(current_user.venue)
    else
      redirect_to dashboard_path
    end
  end

  private

  def event_params
    params.require(:event).permit(:start_time, :end_time)
  end

end
