class PlacesController < ApplicationController

  def index
    # list my location & tag query's results
    @places = Place.all
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
  end

  def show
    @place = Place.find(param[:id])
  end

end
