class PagesController < ApplicationController

  def home
    # display the user's map with their bookmarked places
    # if no bookmark / 1st connection : display 5 places recommended in London according to their profile
    if current_user.places.empty?
      # @places = recommendations for their profile & geolocation
      # Add a note in the view
      @places = Place.all
    else
      @places = current_user.places
    end
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {place: place})
      }
    end
  end

  def dashboard
    # page de profil : penser à ajouter la photo de profil
  end
end
