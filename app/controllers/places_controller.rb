class PlacesController < ApplicationController

  def index
    # list my location & tag query's results
    raise
    @places = current_user.places
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
    @query = params[:query]
    if params[:query].present?
      sql_query = "address ILIKE :query"
      @places = Place.where(sql_query, query: "%#{params[:query]}%")
    end

  end

  def show
    @place = Place.find(params[:id])
    @markers = {
        lat: @place.latitude,
        lng: @place.longitude
      }
    @bookmark = Bookmark.new
    @reco_places = [Place.find(67)]
    # A AJOUTER AVEC LES RECOS ASSOCIES = TAGS SIMILAIRES? OU MAJ DE PROFIL QUI LE PUSH => CHERCHER LES TAGS DU LIEU PARMI CES PROFILS?
  end


  private

  def place_params
    params.permit(:trip).require(:name, :address, :query)
  end


end
