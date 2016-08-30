class ArtworksController < ApplicationController
  def new
  end

  def create
    @artwork = Artwork.create(art_params)
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    @artwork.update(art_params)
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
  end

  private

  def art_params
    params.require(:artwork).permit(:name, :description)
  end
end

