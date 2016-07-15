class Artwork < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, :length => {
    :minimum =>2,
    :maximum =>50}
  validates :description, presence: true

  end
