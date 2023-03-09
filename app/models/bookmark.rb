class Bookmark < ApplicationRecord
  belongs_to :place
  belongs_to :user
  belongs_to :trip
  has_many :bookmark_tags
  has_many :tags, through: :bookmark_tags

  validates :rating, inclusion: { in: (0..5) }

  enum status: {
    created: 0,
    bookmarked: 1,
    favorite: 2,
    archive: 3
  }

end
