class PlacesController < ApplicationController

  def index
    # list my location & tag query's results
    @places = current_user.places
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
    if params[:query].present?
      @query = params[:query]
      sql_query = "address ILIKE :query"
      @places = Place.where(sql_query, query: "%#{params[:query]}%")
    end
  end

  def show
    @place = Place.find(params[:id])
    @marker = @place.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
    @bookmark = Bookmark.new
    # @reco_places = A AJOUTER AVEC LES RECOS ASSOCIES = TAGS SIMILAIRES? OU MAJ DE PROFIL QUI LE PUSH => CHERCHER LES TAGS DU LIEU PARMI CES PROFILS?
  end


  private

  def place_params
    params.permit(:place).require(:name, :address)
  end

end
