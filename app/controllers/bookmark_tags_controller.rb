class BookmarkTagsController < ApplicationController

  def new
    @bookmark = Bookmark.find(params[:bookmark_id])
    @place = Place.find(@bookmark.place_id)
  end

  def create
  end

  def destroy
  end

end
