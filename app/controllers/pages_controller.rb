class PagesController < ApplicationController
  def home
    @artworks = Artwork.all
  end

  def contact
  end

  def show
    @artwork = Artwork.find(params[:id])
  end
end
