class DashboardsController < ApplicationController
  def dashboard
    @events = current_user.events
    @bookings = Booking.where(event: @events, user: current_user)
    @host_events = current_user.venues.first.events unless current_user.venues.empty?
    @host_bookings = Booking.where(event: @host_events)
  end
end
