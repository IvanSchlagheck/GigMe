class VenuesController < ApplicationController
  def index
    if params[:venue].present?
      @venues = Venue.where("name ILIKE ?", "%#{params[:venue]}%")
    else
      @venues = Venue.all
    end
  end

  def show
    @venue = Venue.find(params[:id])
  end
end
