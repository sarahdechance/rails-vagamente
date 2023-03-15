class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # display the user's map with their bookmarked places
    # if no bookmark / 1st connection : display 5 places recommended in London according to their profile
    if user_signed_in?
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
  end

  def dashboard
    # UPDATE POUR COLLER A LA NOUVELLE DB?
    @my_trips = current_user.trips
    @my_places = current_user.places
    @my_reviews = current_user.bookmarks.count { |bmk| bmk.reviewed? }
  end
end
