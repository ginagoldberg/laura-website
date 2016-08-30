class ArtworksController < ApplicationController
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
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    @artwork.update(art_params)
      if @artwork.save
      redirect_to artwork_path(@artwork),  :alert => "#{@artwork.name} is updated"
    else
      render 'edit'
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to root_path, :alert => "#{@artwork.name} is deleted"
  end

  private

  def art_params
    params.require(:artwork).permit(:name, :description)
  end
end

