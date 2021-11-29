class VenuesController < ApplicationController
  def index
    if params[:venue].present?
      @venues = Venue.where("name ILIKE ?", "%#{params[:venue]}%")
    else
      @venues = Venue.all
    end
    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude
      }
    end
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :contact_details, photos: [])
  end
end
