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
      @places = @places.sample(3)

      @best_matches = Place.all.sample(10)
      @reco_bars = Place.where(genre: 1)
      @reco_restaurants = Place.where(genre: 0)
      @reco_club = Place.where(genre: 2)

      @trips = current_user.trips # Pour la modale d'ajout des bookmarks => avoir la liste des trips déjà créés de mon user
      @trip = Trip.new # Pour la modale d'ajout des bookmarks => créer une nouvelle instance de Trips

  end

  def show
    @place = Place.find(params[:id])
    @recommendations = @place.bookmark_tags.count
    @markers = [{
        lat: @place.latitude,
        lng: @place.longitude
      }]
    @bookmark = Bookmark.new
    @reco_places = Place.all.sample(3)
    @trips = current_user.trips
    @trip = Trip.new
    # A AJOUTER AVEC LES RECOS ASSOCIES = TAGS SIMILAIRES? OU MAJ DE PROFIL QUI LE PUSH => CHERCHER LES TAGS DU LIEU PARMI CES PROFILS?
  end


  private

  def place_params
    params.permit(:trip).require(:name, :address, :query)
  end


end
