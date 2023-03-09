class Place < ApplicationRecord
  has_many :bookmarks
  has_many :users, through: :bookmarks
  has_many :tags, through: :bookmarks

  validates :name, :address, presence: true

  enum genre: {
    resto: 0,
    bar: 1,
    club: 2
  }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
