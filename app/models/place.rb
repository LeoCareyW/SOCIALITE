class Place < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
  validates :photos, :name, :address, :category, presence: true
  has_many :plans, :recommendations, dependent: :destroy
end
