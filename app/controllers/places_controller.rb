class PlacesController < ApplicationController

  def index

    @places = Place.all

    # ---- Afficher les résultats selon le lieu recherché ----
    @query = params[:query]
    if params[:query].present?
      sql_query = "address ILIKE :query"
      @places = @places.where(sql_query, query: "%#{params[:query]}%")
    end


    #  ---- Sélectionner les places selon le genre (resto, bar, club) recherché ----
    @genre_enums = params[:genre]
    @places.select do |place|
      place.genre == @genre_enums[0] || 
    end

    raise


    # ---- Je filtre par tags ----

    #  ---- J'ordonne par le ranking du matching ----

    # si résultat par catégory < 5 places => j'ajoute les best ranking hors tags




    @places = @places.sample(3)

    @best_matches = Place.all.sample(10)
    @reco_bars = Place.where(genre: 1)
    @reco_restaurants = Place.where(genre: 0)
    @reco_club = Place.where(genre: 2)

    @trips = current_user.trips # Pour la modale d'ajout des bookmarks => avoir la liste des trips déjà créés de mon user
    @trip = Trip.new # Pour la modale d'ajout des bookmarks => créer une nouvelle instance de Trips

    # @markers = @places.geocoded.map do |place|
    #   {
      #     lat: place.latitude,
      #     lng: place.longitude
      #   }
    # end
  end

  def show
    @place = Place.find(params[:id])
    @recommendations = @place.bookmarks.select { |bmk| bmk.reviewed? }
    # @rating = (@recommendations.map { |reco| reco.rating }).sum / @recommendations.count
    @markers = [{
      lat: @place.latitude,
      lng: @place.longitude
      }]
    @bookmark = Bookmark.new
    @reco_places = Place.all.sample(3)
    @trips = current_user.trips
    @trip = Trip.new
    # @matching = @place.match(current_user)
    # A AJOUTER AVEC LES RECOS ASSOCIES = TAGS SIMILAIRES? OU MAJ DE PROFIL QUI LE PUSH => CHERCHER LES TAGS DU LIEU PARMI CES PROFILS?
  end


  private

  def place_params
    params.permit(:trip).require(:name, :address, :query)
  end


end
