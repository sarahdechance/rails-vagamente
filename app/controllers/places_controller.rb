class PlacesController < ApplicationController

  def index

    places = Place.all

    # ---- Afficher les résultats selon le lieu recherché ----
    @query = params[:query]
    if params[:query].present?
      sql_query = "address ILIKE :query"
      places = places.where(sql_query, query: "%#{params[:query]}%")
    end


    #  ---- Sélectionner les places selon le genre (resto, bar, club) recherché ----
    places = Place.where(genre: params[:genre])
    # ---- Je filtre par tags ----

    #  ---- J'ordonne par le ranking du matching ----
    sorted_places = places.sort_by do |place|
      place.match(current_user)
    end

    @search_places = sorted_places.reverse



    #  ---- variables pour la show ----
    @best_matches = @search_places.first(4)

    @reco_bars = @search_places.select(&:bar?)
    @reco_restaurants = @search_places.select(&:restaurant?)
    @reco_club = @search_places.select(&:club?)

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
    @trips = current_user.trips.uniq
    @trip = Trip.new
    # @matching = @place.match(current_user)
    # A AJOUTER AVEC LES RECOS ASSOCIES = TAGS SIMILAIRES? OU MAJ DE PROFIL QUI LE PUSH => CHERCHER LES TAGS DU LIEU PARMI CES PROFILS?
  end


  private

  def place_params
    params.permit(:trip).require(:name, :address, :query)
  end

  def search_params
    params.require(:genre, :tags, :query)
  end

end
