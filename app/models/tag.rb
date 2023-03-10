class Tag < ApplicationRecord
  has_many :bookmark_tags
  has_many :bookmarks, through: :bookmark_tags, dependent: :destroy
  has_many :places, through: :bookmarks

  validates :name, :category, presence: true

  enum category: {
    tous: 0,
    restaurant: 1,
    bar: 2,
    club: 3
  }

end
