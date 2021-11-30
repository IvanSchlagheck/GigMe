class DashboardsController < ApplicationController
  def dashboard
    @events = current_user.events
    @bookings = Booking.where(event: @events, user: current_user)
    @host_events = current_user.venue.events unless current_user.venue.nil?
    @host_bookings = Booking.where(event: @host_events)
  end
end
