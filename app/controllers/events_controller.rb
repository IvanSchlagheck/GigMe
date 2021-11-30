class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.venue = current_user.venue
    if @event.save
      redirect_to show_path(venue)
    else
      render :dashboard
    end
  end

  private

  def event_params
    params.require(:events).permit(:start_time, :end_time)
  end

end
