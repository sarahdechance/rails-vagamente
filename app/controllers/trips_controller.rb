class TripsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @query = params[:query]
    @profile = current_user.profile_id
    @tags = Tag.all
  end

  def research
    @tags = Tag.all
    @query = params[:query]
  end

  def createl
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
