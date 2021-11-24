class DashboardsController < ApplicationController
  def dashboard
    @events = current_user.events
    @bookings = Booking.where(event: @events)
    @host_events = current_user.venues.first.events
    @host_bookings = Booking.where(event: @host_events)
  end
end
