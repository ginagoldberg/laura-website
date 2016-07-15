class PagesController < ApplicationController
  def home
    @artworks = Artwork.all
  end

  def contact
  end

  def show
    @artwork = Artwork.find(params[:id])
  end


  # private

  # def art_params
  #   params.require(:artwork).permit(:name, :description)
  # end
end
