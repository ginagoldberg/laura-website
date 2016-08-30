class ArtworksController < ApplicationController
  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(art_params)

    if @artwork.save
      redirect_to root_path,  :notice => "Your new artwork was saved"
    else
      render 'new'
    end
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

