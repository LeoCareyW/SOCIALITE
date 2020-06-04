class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  geocoded_by :ip_address
  after_validation :geocode
  has_many :friendships
  has_one_attached :photo
  has_many :friends, through: :friendships
  has_many :memberships
  has_many :comments
  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :groups, through: :memberships
  has_many :plans, dependent: :destroy
  has_many :recommendations, dependent: :destroy
  has_many :posts, dependent: :destroy
  # has_many :messages
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end


