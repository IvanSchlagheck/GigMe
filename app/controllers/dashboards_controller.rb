class DashboardsController < ApplicationController
  def dashboard
    @events = current_user.events
    @bookings = Booking.where(event: @events)
  end
end
