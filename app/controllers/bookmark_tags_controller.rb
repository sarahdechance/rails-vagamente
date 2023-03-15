class BookmarkTagsController < ApplicationController

  def new
  end

  def create
    # VOIR SI LA CREATION NE SE FAIT PAS DANS LE BOOKMARK EDIT:
    # @bookmark = Bookmark.find(param[:bookmark_id])
    # @bookmark_tag = BookmarkTag.new(bookmark_tag_params)
    # @bookmark_tag.save
  end

  def destroy
  end

  private

  # def bookmark_tag_params
  #   params.permit(:bookark_tag).require(:tag_id, :bookmark_id)
  # end

end
