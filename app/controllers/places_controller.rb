class PlacesController < ApplicationController

  def index
    @places = Place.all(params[:page]).per(10)
  end


end
