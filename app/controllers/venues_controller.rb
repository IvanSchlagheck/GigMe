class VenuesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR address ILIKE :query"
      @venues = Venue.where(sql_query, query: "%#{params[:query]}%")
    else
      @venues = Venue.all
    end
    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window: render_to_string(partial: "info_window", locals: { venue: venue })
      }
    end
  end

  def show
    @venue = Venue.find(params[:id])
    start_date = params.fetch(:start_date, Date.today).to_date
    @events = @venue.events.where(start_time: start_date.beginning_of_week..start_date.end_of_week)

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
