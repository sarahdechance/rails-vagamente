class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :profile, optional: true
  has_many :bookmarks
  has_many :trips, through: :bookmarks
  has_many :places, through: :bookmarks
  has_many :bookmark_tags, through: :bookmarks
  has_one_attached :profile_picture


  validates :pseudo, uniqueness: true, presence: true
end
