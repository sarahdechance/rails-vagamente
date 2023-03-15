class TripsController < ApplicationController

  def index
  end

  def show

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
    @place = Place.find(params[:place_id])
    @trip = Trip.new(name: trip_params)
    if @trip.save!
      @bookmark = Bookmark.new(place_id: @place.id, user_id: current_user.id, trip_id: @trip.id)
      @bookmark.save
      redirect_to place_path(@place)
    else
      render "places/#{@place.id}", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def trip_params
    params.require(:name)
  end

end
