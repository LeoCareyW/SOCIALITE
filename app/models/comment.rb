class Comment < ApplicationRecord
  belongs_to :place
  belongs_to :user

  validates :content, length: { minimum: 5 }
  validates :rating, presence: true
end
