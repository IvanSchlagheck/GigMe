class VenuesController < ApplicationController
  def index
    if params[:query].present?
      @venues = Venue.where(name: params[:query])
    else
      @venues = Venue.all
    end
  end

  def show
    @venue = Venue.find(params[:id])
  end
end
