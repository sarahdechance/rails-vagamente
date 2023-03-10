class Bookmark < ApplicationRecord
  belongs_to :place
  belongs_to :user
  belongs_to :trip, optional: true
  has_many :bookmark_tags
  has_many :tags, through: :bookmark_tags

  enum status: {
    created: 0,
    bookmarked: 1,
    favorite: 2,
    archive: 3
  }

end
