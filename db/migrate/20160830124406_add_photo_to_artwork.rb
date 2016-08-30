class AddPhotoToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :photo, :string
  end
end
