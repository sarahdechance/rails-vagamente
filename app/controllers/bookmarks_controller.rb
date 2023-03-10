class BookmarksController < ApplicationController

  def index
  end

  def create
    @place = Place.find(params[:place_id])
    @user = current_user

    @bookmark = Bookmark.find_or_initialize_by(place: @place, user: @user)
    if @bookmark.save
      redirect_to :user_dashboard
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



end
