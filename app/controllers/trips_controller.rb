class TripsController < ApplicationController

  def index
  end

  def show
    @trip = Trip.find(params[:id])
    @trip_places = @trip.places
    @markers = @trip_places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
  end

  def new
    @query = params[:query]
    @profile = current_user.profile_id
    @tags = Tag.all
  end

  def search
  end


  def research
    @tags = Tag.all
    @query = params[:query]
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
