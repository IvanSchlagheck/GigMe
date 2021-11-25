class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @message = Message.new(message_params)
    @booking.user = current_user
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
    params.require(:booking).permit()
  end
  def message_params
    params.require(:message).permit(:content)
  end
end
