class ArtworksController < ApplicationController
before_action :set_artwork, only: [:edit, :update, :destroy]

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(art_params)

    if @artwork.save
      redirect_to artwork_path(@artwork),  :alert => "#{@artwork.name} is saved"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @artwork.update(art_params)
      if @artwork.save
      redirect_to artwork_path(@artwork),  :alert => "#{@artwork.name} is updated"
    else
      render 'edit'
    end
  end

  def destroy
    @artwork.destroy
    redirect_to root_path, :alert => "#{@artwork.name} is deleted"
  end

  private

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end

  def art_params
    params.require(:artwork).permit(:name, :description, :photo, :photo_cache)
  end
end

