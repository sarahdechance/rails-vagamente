class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # display the user's map with their bookmarked places
    # if no bookmark / 1st connection : display 5 places recommended in London according to their profile 
  end

  def dashboard
  end

end
