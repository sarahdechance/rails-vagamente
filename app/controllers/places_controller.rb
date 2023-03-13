class PlacesController < ApplicationController

  def index
    # list my location & tag query's results

    @places = Place.all
    # @markers = @places.geocoded.map do |place|
    #   {
      #     lat: place.latitude,
      #     lng: place.longitude
      #   }
      # end
      @query = params[:query]
      if params[:query].present?
        sql_query = "address ILIKE :query"
        @places = @places.where(sql_query, query: "%#{params[:query]}%")
      end
      @places = @places.sample(4)

  end

  def show
    @place = Place.find(params[:id])
    @markers = {
        lat: @place.latitude,
        lng: @place.longitude
      }
    @trips = current_user.trips #DEVRAIT FONCTIONNER MAIS FAIT PLANTER, current_user n'existerait pas..
    @bookmark = Bookmark.new
    @reco_places = [Place.all.sample]
    # A AJOUTER AVEC LES RECOS ASSOCIES = TAGS SIMILAIRES? OU MAJ DE PROFIL QUI LE PUSH => CHERCHER LES TAGS DU LIEU PARMI CES PROFILS?
  end


  private

  def place_params
    params.permit(:trip).require(:name, :address, :query)
  end


end
