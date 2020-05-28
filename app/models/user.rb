class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :friendships
  has_one_attached :photo
  has_many :friends, through: :friendships
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :plans, dependent: :destroy
  has_many :recommendations, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end


