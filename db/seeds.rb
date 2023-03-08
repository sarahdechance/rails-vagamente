# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Setting profiles..."
profile_party = Profile.new({
  name: "Party Hard",
  description: "Passion pour les fêtes et la vie nocturne. Clubs ouverts tards. Bars animés, lieux insolites. Restos type street food."
})

profile_moderate = Profile.new({
  name:"XX",
  description: "Sorties nocturnes. Bars confortables, ambiance décontractée. Restos moyen de gamme type tapas à partager, classique border trendy."
})

profile_chill = Profile.new({
  name: "Insta Chill",
  description: "Pas de sortie tard. Ambiance chill posé sapé. Bar style lounge jazz. Restos à concept insta style ou romantiques."
})

profile_boring = Profile.new({
  name: "Homebird",
  description: "Pantouflard par excellence. Bar classique, adepte des bistrots. Restos locaux à fancy "
})

puts "Profiles done!"

profiles = Profile.all

p "-" * 40
puts "Setting tags..."

tag1 = Tag.create!({
  name: "Cheap"
})

tag2 = Tag.create!({
  name: "Expensive"
})

tag3 = Tag.create!({
  name: "Chill"
})

tag4 = Tag.create!({
  name: "Lively"
})

tag5 = Tag.create!({
  name: "Lounge"
})

tag9 = Tag.create!({
  name: "Sophisticated"
})

tag14 = Tag.create!({
  name: "Trendy"
})

tag6 = Tag.create!({
  name: "Live music"
})

tag7 = Tag.create!({
  name: "Cocktail"
})

tag10 = Tag.create!({
  name: "Good beer"
})

tag11 = Tag.create!({
  name: "Wine bar"
})

tag8 = Tag.create!({
  name: "Typical"
})

tag12 = Tag.create!({
  name: "Dancing"
})

tag13 = Tag.create!({
  name: "Local food",
  category: 1
})

tag15 = Tag.create!({
  name: "Tapas/sharing",
  category: 1
})

tag16 = Tag.create!({
  name: "World food",
  category: 1
})

tag17 = Tag.create!({
  name: "'Til morning"
})

tag18 = Tag.create!({
  name: "Underground"
})

tag19 = Tag.create!({
  name: "Mainstream music"
})

tag20 = Tag.create!({
  name: ""
})

puts "Tags done!"

p "-" * 40

puts "removing previous Users"
User.destroy_all

puts "Generating new users"
# profil teufeur
4.times do
  pseudo = Faker::name.gsub(/\s+/, "")
  email = "#{pseudo}@gmail.com"
  password = "azerty"
  profile_id = 1
  User.create!({
    pseudo: pseudo,
    email: email,
    password: password,
    profile_id: profile_id
  })
end

3.times do
  # profil modéré
  pseudo = Faker::name.gsub(/\s+/, "")
  email = "#{pseudo}@gmail.com"
  password = "azerty"
  profile_id = 2
  User.create!({
    pseudo: pseudo,
    email: email,
    password: password,
    profile_id: profile_id
  })
end

2.times do
  # profil chill
  pseudo = Faker::name.gsub(/\s+/, "")
  email = "#{pseudo}@gmail.com"
  password = "azerty"
  profile_id = 3
  User.create!({
    pseudo: pseudo,
    email: email,
    password: password,
    profile_id: profile_id
  })
end

2.times do
  # profil chiant
  pseudo = Faker::name.gsub(/\s+/, "")
  email = "#{pseudo}@gmail.com"
  password = "azerty"
  profile_id = 4
  User.create!({
    pseudo: pseudo,
    email: email,
    password: password,
    profile_id: profile_id
  })
end

puts "Users generated"

p "-" * 40

puts "Setting places..."

# à faire

puts "Places generated"

p "-" * 40

puts "Setting bookmarks..."

teuffeur_profiles = User.where(profile_id: 1)
teuffeur_profiles.each do
  2.time do

  end
end
