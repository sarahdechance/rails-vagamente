class Trip < ApplicationRecord
  has_many :bookmarks
  has_many :places, through: :bookmarks, dependent: :destroy

  # pourquoi un status?
  validates :name, :status, uniqueness: true, presence: true



end
