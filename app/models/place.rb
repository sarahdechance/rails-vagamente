class Place < ApplicationRecord
  has_many :bookmarks
  has_many :users, through: :bookmarks
  has_many :tags, through: :bookmarks
  has_many :bookmark_tags, through: :bookmarks

  validates :name, :address, presence: true

  enum genre: {
    restaurant: 0,
    bar: 1,
    club: 2
  }

  def bookmarked?(current_user)
    return  self.users.any? { |user| user.id == current_user.id }
  end


  def set_ratings
    # Récupérer les bookmark_tags de chaque profil:

    # self.bookmark_tags.each do |bookark_tag|
    #   if bookark_tag.user.profile.party_animal?
    #     party_animal_bookmark_tags << bookark_tag
    #   elsif bookark_tags.user.profile.bar_hopper?
    #     bar_hopper_bookmark_tags << bookark_tag
    #   elsif bookark_tags.user.profile.chill_seeker?
    #     chill_seeker_bookmark_tags << bookark_tag
    #   else
    #     gourmet_explorer_bookmark_tags << bookark_tag
    #   end
    # end


    # pa_five = party_animal_bookmark_tags.count do |tag|
    #   tag.rating == 5
    # end



    # AVOIR UN HASH avec clé = la valeur du rating, valeur = le nombre de bookmark_tags avec de rating

  end

  def tag_list(number)
    tag_hash = {}
    self.tags.each do |tag|
      if tag_hash[tag.name].nil?
        tag_hash[tag.name] = 1
      else
        tag_hash[tag.name] += 1
      end
    end

    ordered_tags = tag_hash.to_a.sort_by! { |k, v| v }
    return ordered_tags.reverse.first(number)
  end



  # calculer la moyenne de chaque profil
  # définir la pondération de chaque profil


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
