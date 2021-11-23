class DashboardsController < ApplicationController
  def dashboard
    @events = current_user.events
    @bookings = Booking.all
  end
end
