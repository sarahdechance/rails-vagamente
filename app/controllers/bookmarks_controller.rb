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
    @bookmark = Bookmark.find(params[:id])
    @place = Place.find(@bookmark.place_id)
    # @bookmark_tags = @bookmark.tags
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
    @bookmark.update(bookmark_params)

    if bookmark_params[:favorite] == "true"
      @bookmark.status = "favorite"
    else
      @bookmark.status = "reviewed"
    end

    # Ajouter la création de chaque bookmark_tag :
    # params[:tags].each to |tag|
    # tag_to_create = Tag.where(name: "tag") # ==> A AJUSTER SELON LA VALUE REDONNEE PAR LE FORM
    # BookmarkTag.create(tag_id: tag_to_create.id, bookmark_id: @bookmark.id)
    #  OU : BookmarkTag.new(bookmark_tag_params)
    # AVEC UNTAG DE LA METHODE BOOKMARK TAG PARAMS
    # end

    if @bookmark.save
      if @bookmark.trip_id.nil?
        redirect_to user_dashboard_path
      else
        @trip = Trip.find(@bookmark.trip_id)
        redirect_to trip_path(@trip)
      end
    else
      render 'update', status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @trip = Trip.find(@bookmark.trip_id)
    if @bookmark.destroy
      redirect_to trip(@trip), status: :see_other
    end

  end

  private

  def trip_params
    params.require(:name)
  end

  def bookmark_params
    params.permit(:rating, :comment, :favorite)
  end

  # def bookmark_tag_params
  #   params.permit(:bookark_tag).require(:tag_id, :bookmark_id)
  # end


end
