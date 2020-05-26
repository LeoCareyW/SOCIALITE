class Place < ApplicationRecord
  has_many_attached :photos
  validates :photos, :name, :address, :category, presence: true
end
