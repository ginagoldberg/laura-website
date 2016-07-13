class PagesController < ApplicationController
  def home
    @artworks = Artwork.all
  end

  def contact
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  # Check the code below
  private

  def params
    params.require(:artwork).permit(:name, :description)
  end
end
