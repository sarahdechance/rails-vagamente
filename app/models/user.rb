class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :profile, optional: true
  has_many :bookmarks
  has_many :trips, through: :bookmarks
  has_many :places, through: :bookmarks
  has_many :bookmark_tags, through: :bookmarks
  has_one_attached :profile_picture


  validates :pseudo, uniqueness: true, presence: true

  def ponderation(user)
    if profile.category == user.profile.category
      2
    elsif profile.category == "party_animal" && user.profile.category == "chill_seeker" || profile.category == "chill_seeker" && user.profile.category == "party_animal" || profile.category == "bar_hopper" && user.profile.category == "gourmet_explorer" || profile.category == "gourmet_explorer" && user.profile.category == "bar_hopper"
      -1
    elsif profile.category == "party_animal" && user.profile.category == "gourmet_explorer" || profile.category == "gourmet_explorer" && user.profile.category == "party_animal"
      -2
    else
      1
    end
  end
end
