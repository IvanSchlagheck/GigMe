class BookingsController < ApplicationController
  def new
  end

  def index
  end

  def show
    @booking = Booking.find(params[:id])
    @message = Message.new
    @artist = User.find_by(id: @booking.user_id)
    @event = Event.find_by(id: @booking.event_id)
    @venue = Venue.find_by(id: @event.venue_id)
    @venues = Venue.where(id: @event.venue_id)
    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window: render_to_string(partial: "./venues/info_window", locals: { venue: venue })
      }
    end
  end

  def create
    @event = Event.find(params[:event_id])
    @booking = Booking.new
    @message = Message.new(booking_params)
    @booking.user = current_user
    @booking.status = 0
    @booking.event = @event
    @message.user = current_user
    if @booking.save
      @message.booking_id = @booking.id
      @message.save
      redirect_to dashboard_path
    else
      redirect_to show_path(@venue_id)
    end
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.status = 1
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = 2
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:content)
  end
end
