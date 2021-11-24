class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @message = Message.new(message_params)
    @booking.user = current_user
    
  end
  private
  def booking_params
    params.require(:booking).permit()
  end
  def message_params
    params.require(:message).permit(:content)
  end
end
