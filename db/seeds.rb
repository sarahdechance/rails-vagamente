# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Deleting data..."
BookmarkTag.destroy_all
Bookmark.destroy_all
Place.destroy_all
Tag.destroy_all
User.destroy_all
Profile.destroy_all


puts "Setting profiles..."
profile_party = Profile.create!({
  name: "Party Animal",
  description: "XX",
  category: 0
})



profile_moderate = Profile.create!({
  name:"Bar Hopper",
  description: "XX",
  category: 1
})




profile_chill = Profile.create!({
  name: "Chill Seeker",
  description: "XX",
  category: 2
})




profile_boring = Profile.create!({
  name: "Gourmet Explorer",
  description: "XX",
  category: 3
})



profiles = Profile.all

puts "Profiles done!"


p "-" * 40

puts "Removing previous Tags"

puts "Setting up new tags..."

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


puts "Tags done!"

p "-" * 40

puts "Generating new users"

# profil teufeur
teuf_users = []
8.times do
  pseudo = Faker::Name.name.gsub(/\s+/, "")
  email = "#{pseudo}@gmail.com"
  password = "azerty"
  profile_id = Profile.party_animal.first.id
  user = User.create!({
    pseudo: pseudo,
    email: email,
    password: password,
    profile_id: profile_id
  })
  teuf_users << user
end

# profil good vibes
bar_users = []
5.times do
  pseudo = Faker::Name.name.gsub(/\s+/, "")
  email = "#{pseudo}@gmail.com"
  password = "azerty"
  profile_id = Profile.bar_hopper.first.id
  user = User.create!({
    pseudo: pseudo,
    email: email,
    password: password,
    profile_id: profile_id
  })
  bar_users << user
end

# profil Insta chill
insta_users = []
4.times do
  pseudo = Faker::Name.name.gsub(/\s+/, "")
  email = "#{pseudo}@gmail.com"
  password = "azerty"
  profile_id = Profile.chill_seeker.first.id
  user = User.create!({
    pseudo: pseudo,
    email: email,
    password: password,
    profile_id: profile_id
  })
  insta_users << user
end

# profil Restau
food_users = []
3.times do
  pseudo = Faker::Name.name.gsub(/\s+/, "")
  email = "#{pseudo}@gmail.com"
  password = "azerty"
  profile_id = Profile.gourmet_explorer.first.id
  user = User.create!({
    pseudo: pseudo,
    email: email,
    password: password,
    profile_id: profile_id
  })
  food_users << user
end

# nos profils
pseudo = "chiara"
email = "#{pseudo}@gmail.com"
password = "azerty"
profile_id = Profile.gourmet_explorer.first.id
chiara = User.create!({
  pseudo: pseudo,
  email: email,
  password: password,
  profile_id: profile_id
})
teuf_users << chiara

pseudo = "aubry"
email = "#{pseudo}@gmail.com"
password = "azerty"
profile_id = Profile.bar_hopper.first.id
aubry = User.create!({
  pseudo: pseudo,
  email: email,
  password: password,
  profile_id: profile_id
})
bar_users << aubry

pseudo = "edouard"
email = "#{pseudo}@gmail.com"
password = "azerty"
profile_id = Profile.bar_hopper.first.id
edouard = User.create!({
  pseudo: pseudo,
  email: email,
  password: password,
  profile_id: profile_id
})
bar_users << edouard

pseudo = "samuel"
email = "#{pseudo}@gmail.com"
password = "azerty"
profile_id = Profile.chill_seeker.first.id
sam = User.create!({
  pseudo: pseudo,
  email: email,
  password: password,
  profile_id: profile_id
})
insta_users << sam

pseudo = "sarah"
email = "#{pseudo}@gmail.com"
password = "azerty"
profile_id = Profile.gourmet_explorer.first.id
sarah = User.create!({
  pseudo: pseudo,
  email: email,
  password: password,
  profile_id: profile_id
})
food_users << sarah

puts "Users generated"

p "-" * 40

puts "Setting places..."

# hipster clubs
hipst_cl1 = Place.create({
  name: "La Gare / Le Gore",
  address: "1, avenue Corentin Cariou, 75019 Paris",
  genre: 2
})

hipst_cl2 = Place.create({
  name: "Badaboum",
  address: "2 bis Rue des Taillandiers, 75011 Paris",
  genre: 2
})

hipst_cl3 = Place.create({
  name: "Cabaret Sauvage",
  address: "59 Bd Macdonald, 75019 Paris",
  genre: 2
})

hipst_cl4 = Place.create({
  name: "La Station - Gare des mines",
  address: "29 Av. de la Prte d'Aubervilliers, 75018 Paris",
  genre: 2
})

hipst_cl5 = Place.create({
  name: "La Machine du Moulin Rouge",
  address: "90 Bd de Clichy, 75018 Paris",
  genre: 2
})

hipst_cl6 = Place.create({
  name: "T7",
  address: "Pl. des Insurg??s de Varsovie, 75015 Paris",
  genre: 2
})

hipst_cl7 = Place.create({
  name: "?? la folie",
  address: "A la Folie - Folie L2 - Parc de, 26 Av. Corentin Cariou, 75019 Paris",
  genre: 2
})

hipst_cl8 = Place.create({
  name: "Rex Club",
  address: "5 Bd Poissonni??re, 75002 Paris",
  genre: 2
})

# hipster bar
hipst_b1 = Place.create({
  name: "Caf?? Pop",
  address: "102 Rue Saint-Maur, 75011 Paris",
  genre: 1
})

hipst_b2 = Place.create({
  name: "L'??picier",
  address: "24 Rue Notre Dame de Nazareth, 75003 Paris",
  genre: 1
})

hipst_b3 = Place.create({
  name: "Oplato",
  address: "69 Rue de Charonne, 75011 Paris",
  genre: 1
})

hipst_b4 = Place.create({
  name: "Lou Pascalou",
  address: "14 Rue des Panoyaux, 75020 Paris",
  genre: 1
})

# mainstream clubs
main_cl1 = Place.create({
  name: "Les Etoiles",
  address: "61 Rue du Ch??teau d'Eau, 75010 Paris",
  genre: 2
})

main_cl2 = Place.create({
  name: "Globo",
  address: "61 Rue du Ch??teau d'Eau, 75010 Paris",
  genre: 2
})

main_cl3 = Place.create({
  name: "L'Arc Paris",
  address: "12 Rue de Presbourg, 75116 Paris",
  genre: 2
})

main_cl4 = Place.create({
  name: "Le Rive Gauche",
  address: "1 Rue du Sabot, 75006 Paris",
  genre: 2
})

main_cl5 = Place.create({
  name: "Le Flow",
  address: "4 Port Des Invalides, 75007 Paris",
  genre: 2
})

main_cl6 = Place.create({
  name: "Cova Club Paris",
  address: "4 Port Des Invalides, 75007 Paris",
  genre: 2
})


# beauf bars
main_b1 = Place.create({
  name: "Caf?? Oz",
  address: "8 Rue Saint-Denis, 75001 Paris",
  genre: 1
})

main_b2 = Place.create({
  name: "Le Caf?? de la Plage",
  address: "59 Rue de Charonne, 75011 Paris",
  genre: 1
})

main_b3 = Place.create({
  name: "The Holy Savior",
  address: "11 Rue des Panoyaux, 75020 Paris",
  genre: 1
})

main_b4 = Place.create({
  name: "L'Attirail",
  address: "9 Rue au Maire, 75003 Paris",
  genre: 1
})

# insta bars
inst_b1 = Place.create({
  name: "Spootnik Bar",
  address: "57 rue des Gravilliers, 75003 Paris",
  genre: 1
})

inst_b2 = Place.create({
  name: "Andy Wahloo",
  address: "69 Rue des Gravilliers, 75003 Paris",
  genre: 1
})

inst_b3 = Place.create({
  name: "Yag??",
  address: "25 Rue Victor Mass??, 75009 Paris",
  genre: 1
})

inst_b4 = Place.create({
  name: "Little Red Door",
  address: "60 Rue Charlot, 75003 Paris",
  genre: 1
})

inst_b5 = Place.create({
  name: "Mobster Bar",
  address: "8 Rue de Crussol, 75011 Paris",
  genre: 1
})

inst_b5 = Place.create({
  name: "Bisou",
  address: "15 Bd du Temple, 75003 Paris",
  genre: 1
})


# insta resto
inst_res1 = Place.create({
  name: "Django",
  address: "24 Rue Victor Mass??, 75009 Paris",
  image: "https://media.timeout.com/images/105588062/1024/576/image.jpg",
  genre: 0
})

inst_res2 = Place.create({
  name: "Passionn?? Restaurant",
  address: "17 Rue Berg??re, 75009 Paris",
  genre: 0
})

inst_res3 = Place.create({
  name: "Le Sergent Recruteur",
  address: "41 Rue Saint-Louis en l'??le, 75004 Paris",
  genre: 0
})

inst_res4 = Place.create({
  name: "Septime",
  address: "80 Rue de Charonne, 75011 Paris",
  genre: 0
})

inst_res5 = Place.create({
  name: "Le Servan",
  address: "32 Rue Saint-Maur, 75011 Paris",
  genre: 0
})



puts "Places generated"

p "-" * 40

puts "Setting bookmarks..."

hipst_places = [hipst_cl1, hipst_cl2, hipst_cl3, hipst_cl4, hipst_cl5, hipst_cl6, hipst_cl7, hipst_cl8, hipst_b1, hipst_b2, hipst_b3, hipst_b4]
inst_places = [inst_b1, inst_b2, inst_b3, inst_b4, inst_b5, inst_b5, inst_res1, inst_res2, inst_res3, inst_res4, inst_res5]
main_places = [main_cl1, main_cl2, main_cl3, main_cl4, main_cl5, main_cl6, main_b1, main_b2, main_b3, main_b4]

hipst_bm = []
hipst_places.each do |place|
  user = teuf_users.sample
  rating = [3, 4, 5].sample
  bm = Bookmark.create(place_id: place.id, user_id: user.id)
  hipst_bm << bm
end

inst_bm = []
inst_places.each do |place|
  user = insta_users.sample
  rating = [3, 4, 5].sample
  bm = Bookmark.create(place_id: place.id, user_id: user.id)
  inst_bm << bm
end

main_bm = []
main_places.each do |place|
  user = bar_users.sample
  rating = [3, 4, 5].sample
  bm = Bookmark.create(place_id: place.id, user_id: user.id)
  main_bm << bm
end

puts "Bookmarks created"

"-"*40

puts "BookmarkTags setting up..."

hipst_tags = [tag4, tag14, tag6, tag10, tag11]
inst_tags = [tag5, tag9, tag7, tag11]
main_tags = [tag3, tag4, tag10, tag11]

# hipst reco
20.times do
  bm = hipst_bm.sample
  tag = hipst_tags.sample
  BookmarkTag.create(bookmark_id: bm.id, tag_id: tag.id)
end

# insta reco
10.times do
  bm = inst_bm.sample
  tag = inst_tags.sample
  BookmarkTag.create(bookmark_id: bm.id, tag_id: tag.id)
end

# barhopper/mainstream reco
10.times do
  bm = main_tags.sample
  tag = main_bm.sample
  BookmarkTag.create(bookmark_id: bm.id, tag_id: tag.id)
end

puts "BookmarkTags created"


# teuffeur_profiles = User.where(profile_id: 1)
# teuffeur_profiles.each do
#   2.time do

#   end
# end
