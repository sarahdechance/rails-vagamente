class TripsController < ApplicationController

  def index
  end

  def show
  end

  def new
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
