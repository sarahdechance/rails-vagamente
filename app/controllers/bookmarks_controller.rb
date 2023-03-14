class BookmarksController < ApplicationController

  def index
  end

  def create
    @place = Place.find(params[:place_id])
    @user = current_user
    @trip = Trip.find(params[:trip_id])
    @bookmark = Bookmark.new(place_id: @place.id, user_id: current_user.id, trip_id: @trip.id)
    if @bookmark.save
      redirect_to  place_path(@place)
    else
      render 'places/show', status: :unprocessable_entity
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def trip_params
    params.require(:name)
  end

end
