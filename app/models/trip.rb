class Trip < ApplicationRecord
  has_many :bookmarks
  has_many :places, through: :bookmarks, dependent: :destroy
  has_one_attached :profile_picture

  # pourquoi un status?
  validates :name, :status, uniqueness: true, presence: true

end
