class PagesController < ApplicationController

  def home
    # display the user's map with their bookmarked places
    # if no bookmark / 1st connection : display 5 places recommended in London according to their profile
    if current_user.places.nil?
      # @places = recommendations for their profile & geolocation
      # Add a note in the view
    else
      @places = current_user.places
    end
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
  end

  def dashboard
    # page de profil : penser à ajouter la photo de profil
  end
end
