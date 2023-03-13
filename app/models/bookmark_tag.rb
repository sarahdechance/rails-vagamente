class BookmarkTag < ApplicationRecord
  belongs_to :bookmark
  belongs_to :tag
  has_one :user, through: :bookmark

end
