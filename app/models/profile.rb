class Profile < ApplicationRecord
  has_many :users

  validates :name, presence: true

  enum category: {
    party_animal: 0,
    bar_hopper: 1,
    chill_seeker: 2,
    gourmet_explorer: 3
  }

  # How do you like your evenings?
  QUESTION1 = {
    P1: "Clubbing",
    P2:"Chatting with friends",
    P3: "Sipping cocktails",
    P4: "Testing good food"
  }

  # What drink would you be?
  QUESTION2 = {
    P1: "A pint of beer",
    P2: "SHOTS!",
    P3: "A fancy cocktail",
    P4: "A nice Pinot Noir"
  }

    # Your favorite music when you're out?
    QUESTION3 = {
      P1: "Electro or hip-hop",
      P2: "Mainstream pop",
      P3: "Mellow jazz accoustic",
      P4: "Classical / lounge"
    }

    # What's your motivation to go out?
    QUESTION4 = {
      P1: "Meeting people",
      P2: "Chill with friends",
      P3: "Discover nice places",
      P4: "Test restaurants"
    }

    # When do you go out?
    QUESTION5 = {
      P1: "On weekends",
      P2: "All week",
      P3: "Rarely",
      P4: "For special occasions"
    }


  def self.find_my_profile(key)
    case key
    when :P1 then first
    when :P2 then second
    when :P3 then third
    when :P4 then last
    end
  end


end
