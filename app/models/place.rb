class Place < ApplicationRecord
  has_many :plans, dependent: :destroy
end
