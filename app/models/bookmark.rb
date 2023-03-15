class Bookmark < ApplicationRecord
  belongs_to :place
  belongs_to :user
  belongs_to :trip, optional: true
  has_many :bookmark_tags
  has_many :tags, through: :bookmark_tags


  validates :place_id, :uniqueness => {:scope => :trip_id}

  enum status: {
    bookmarked: 0,
    reviewed: 1,
    archive: 2
  }

end
