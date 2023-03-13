class Trip < ApplicationRecord
  has_many :bookmarks
  has_many :places, through: :bookmarks, dependent: :destroy

  validates :name, :status, presence: true



end
