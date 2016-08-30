class ArtworksController < ApplicationController
  def new
  end

  def create
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
  end
end

