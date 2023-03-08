class PlacesController < ApplicationController

  def index
    # list my location & tag query's results
  end

  def show
    @place = Place.find(param[:id])
  end

end
