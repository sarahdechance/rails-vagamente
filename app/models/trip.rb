class Trip < ApplicationRecord
  has_many :bookmarks
  has_many :places, through: :bookmarks, dependent: :destroy

  validates :name, uniqueness: { scope: :user_id }, presence: true

end
