class Comment < ApplicationRecord
  belongs_to :place
  belongs_to :user

  validates :content, length: { minimum: 20 }
end
