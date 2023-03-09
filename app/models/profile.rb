class Profile < ApplicationRecord
  has_many :users

  validates :name, presence: true 

  def self.find_my_profile(key)
    case key
    when :P1 then first
    when :P2 then second
    when :P3 then third
    when :P4 then last
    end
  end
end
