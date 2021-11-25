class BookingsController < ApplicationController
  def new
  end

  def index
  end

  def show
    @booking = Booking.find(params[:id])
    @message = Message.new
  end

  def create
    @booking = Booking.new
    @message = Message.new(booking_params)
    @booking.user = current_user
    @booking.event_id = params[:booking][:event]
    @message.user = current_user
    if @booking.save
      @message.booking_id = @booking.id
      @message.save
      redirect_to booking_path(@booking)
    else
      redirect_to show_path(@venue_id)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:content)
  end
end
