class PlacesController < ApplicationController

  def index
    # list my location & tag query's results
    @places = current_user.places
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
    if params[:query].present?
      @query = params[:query]
      sql_query = "address ILIKE :query"
      @places = Place.where(sql_query, query: "%#{params[:query]}%")
    end
  end

  def show
    @place = Place.find(param[:id])
  end

end
