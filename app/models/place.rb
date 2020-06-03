class Place < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
  validates :photos, :name, :address, :category, presence: true
  has_many :plans, dependent: :destroy
  has_many :recommendations, dependent: :destroy
  has_many :comments, dependent: :destroy
  include PgSearch::Model
  pg_search_scope :search_by_address_and_description_and_category_and_name,
  against: [ :address, :description, :category, :name ],
  using: {
    tsearch: { prefix: true } 
  }
end

