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
  description: "Passion pour les fêtes et la vie nocturne. Clubs ouverts tards. Bars animés, lieux insolites. Restos genre street food."
})

profile_moderate = Profile.new({
  name:"Good vibes",
  description: "Sorties nocturnes. Bars confortables, ambiance décontractée. Restos moyen de gamme genre tapas à partager, classique border trendy."
})

profile_chill = Profile.new({
  name: "Insta Chill",
  description: "Pas de sortie tard. Ambiance chill posé sapé. Bar style lounge jazz. Restos à concept insta style ou romantiques."
})

profile_boring = Profile.new({
  name: "Snooze",
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
8.times do
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

# profil good vibes
5.times do
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

# profil Insta chill
4.times do
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

# profil chiant
3.times do
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

# hipster clubs
hipst_cl1 = Places.new({
  name: "La Gare / Le Gore",
  address: "1, avenue Corentin Cariou, 75019 Paris",
  genre: 2
})

hipst_cl2 = Places.new({
  name: "Badaboum",
  address: "2 bis Rue des Taillandiers, 75011 Paris",
  genre: 2
})

hipst_cl3 = Places.new({
  name: "Cabaret Sauvage",
  address: "59 Bd Macdonald, 75019 Paris",
  genre: 2
})

hipst_cl4 = Places.new({
  name: "La Station - Gare des mines",
  address: "29 Av. de la Prte d'Aubervilliers, 75018 Paris",
  genre: 2
})

hipst_cl5 = Places.new({
  name: "La Machine du Moulin Rouge",
  address: "90 Bd de Clichy, 75018 Paris",
  genre: 2
})

hipst_cl6 = Places.new({
  name: "T7",
  address: "Pl. des Insurgés de Varsovie, 75015 Paris",
  genre: 2
})

hipst_cl7 = Places.new({
  name: "À la folie",
  address: "A la Folie - Folie L2 - Parc de, 26 Av. Corentin Cariou, 75019 Paris",
  genre: 2
})

hipst_cl8 = Places.new({
  name: "Rex Club",
  address: "5 Bd Poissonnière, 75002 Paris",
  genre: 2
})

# hipster bar
hipst_b1 = Places.new({
  name: "Café Pop",
  address: "102 Rue Saint-Maur, 75011 Paris"
  genre: 1
})

hipst_b2 = Places.new({
  name: "L'épicier"
  address: "24 Rue Notre Dame de Nazareth, 75003 Paris"
  genre: 1
})

hipst_b3 = Places.new({
  name: "Oplato",
  address: "69 Rue de Charonne, 75011 Paris",
  genre: 1
})

hipst_b4 = Places.new({
  name: "Lou Pascalou",
  address: "14 Rue des Panoyaux, 75020 Paris",
  genre: 1
})

# mainstream clubs
main_cl1 = Places.new({
  name: "Les Etoiles",
  address: "61 Rue du Château d'Eau, 75010 Paris",
  genre: 2
})

main_cl2 = Places.new({
  name: "Globo",
  address: "61 Rue du Château d'Eau, 75010 Paris",
  genre: 2
})

main_cl3 = Places.new({
  name: "L'Arc Paris",
  address: "12 Rue de Presbourg, 75116 Paris",
  genre: 2
})

main_cl4 = Places.new({
  name: "Le Rive Gauche",
  address: "1 Rue du Sabot, 75006 Paris",
  genre: 2
})

main_cl5 = Places.new({
  name: "Le Flow",
  address: "4 Port Des Invalides, 75007 Paris",
  genre: 2
})

main_cl6 = Places.new({
  name: "Cova Club Paris",
  address: "4 Port Des Invalides, 75007 Paris",
  genre: 2
})



# beauf bars
main_b1 = Places.new({
  name: "Café Oz",
  address: "8 Rue Saint-Denis, 75001 Paris",
  genre: 1
})

main_b2 = Places.new({
  name: "Le Café de la Plage",
  address: "59 Rue de Charonne, 75011 Paris",
  genre: 1
})

main_b3 = Places.new({
  name: "The Holy Savior",
  address: "11 Rue des Panoyaux, 75020 Paris",
  genre: 1
})

main_b4 = Places.new({
  name: "L'Attirail",
  address: "9 Rue au Maire, 75003 Paris",
  genre: 1
})

# insta bars
inst_b1 = Places.new({
  name: "Spootnik Bar",
  address: "57 rue des Gravilliers, 75003 Paris",
  genre: 1
})

inst_b2 = Places.new({
  name: "Andy Wahloo",
  address: "69 Rue des Gravilliers, 75003 Paris",
  genre: 1
})

inst_b3 = Places.new({
  name: "Yagō",
  address: "25 Rue Victor Massé, 75009 Paris",
  genre: 1
})

inst_b4 = Places.new({
  name: "Little Red Door",
  address: "60 Rue Charlot, 75003 Paris",
  genre: 1
})

inst_b5 = Places.new({
  name: "Mobster Bar",
  address: "8 Rue de Crussol, 75011 Paris",
  genre: 1
})

inst_b5 = Places.new({
  name: "Bisou",
  address: "15 Bd du Temple, 75003 Paris",
  genre: 1
})


# insta resto
inst_res1 = Places.new({
  name: "Django",
  address: "24 Rue Victor Massé, 75009 Paris",
  genre: 0
})

inst_res2 = Places.new({
  name: "Passionné Restaurant",
  address: "17 Rue Bergère, 75009 Paris",
  genre: 0
})

inst_res3 = Places.new({
  name: "Le Sergent Recruteur",
  address: "41 Rue Saint-Louis en l'Île, 75004 Paris",
  genre: 0
})

inst_res4 = Places.new({
  name: "Septime",
  address: "80 Rue de Charonne, 75011 Paris",
  genre: 0
})

inst_res5 = Places.new({
  name: "Le Servan",
  address: "32 Rue Saint-Maur, 75011 Paris",
  genre: 0
})

inst_places = []
puts "Places generated"

p "-" * 40

puts "Setting bookmarks..."

teuffeur_profiles = User.where(profile_id: 1)
teuffeur_profiles.each do
  2.time do

  end
end
