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

  def edit
    # Si review en modale : données à placer dans trips#show
    # + MAYBE "Leave a review" dans places#show? Data à ajouter dans le controller là bas aussi alors
    @bookmark = Bookmark.find(params[:id])
    @place = Place.find(@bookmark.place_id)
    @tags = Tag.all
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    @bookmark.update(bookmark_params)
    @bookmark.status = "reviewed"

    # Ajouter la création de chaque bookmark_tag :
    params[:tags].each do |tag|
      tag_to_create = Tag.where(name: "#{tag}").first # ==> A AJUSTER SELON LA VALUE REDONNEE PAR LE FORM
      BookmarkTag.create(tag_id: tag_to_create.id, bookmark_id: @bookmark.id)
    end

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
    @bookmark.status = "archive"
    # @trip = Trip.find(@bookmark.trip_id)

    redirect_to place_path(@place)


  end

  private

  def trip_params
    params.require(:name)
  end

  def bookmark_params
    params.require(:bookmark).permit(:rating, :comment, :favorite)
  end


end
