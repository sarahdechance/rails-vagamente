class Trip < ApplicationRecord
  has_many :bookmarks
  has_many :places, through: :bookmarks, dependent: :destroy
  has_one_attached :profile_picture

  validates :name, :status, presence: true

end
