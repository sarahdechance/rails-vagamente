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
Trip.destroy_all


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
  image: "https://agendaculturel.emstorage.fr/la-gare-le-gore-20221228150742.jpg",
  description: "There are free concerts from 9pm daily, set in what used to be the station’s entrance hall, which works perfectly to accommodate the warm sounds of saxophones and trumpets. There’s not a jot of elitism though and you can wander about during the session to grab a drink from the affordable bar: pints start at €5, most cocktails are €7 and you a plate of charcuterie weighs in at €11.",
  genre: 2
})

hipst_cl2 = Place.create({
  name: "Badaboum",
  address: "2 bis Rue des Taillandiers, 75011 Paris",
  image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/22/b4/97/39/badaboum-club.jpg?w=900&h=600&s=1",
  description: "Located in the heart of Bastille and proud of its fully polymorphic way of life: Badaboum is a dedicated long sets club for house and techno lovers.",
  phone_number: "01 48 06 50 70",
  genre: 2
})

hipst_cl3 = Place.create({
  name: "Cabaret Sauvage",
  address: "59 Bd Macdonald, 75019 Paris",
  image: "https://utopia-paris.com/upload/media/place_slider/0001/02/thumb_1229_place_slider_medium/cabaret-sauvage.jpeg",
  description: "Created in 1997, Le Cabaret Sauvage is a theatre located in the Parc de la Villette in Paris. Decorated with red velvet and mirrors, the place makes us dive back into the world of the circus and cabaret of the Belle Époque. In summer, it opens its terrace, offering its public a second outdoor stage.",
  phone_number: "01 42 09 03 09",
  genre: 2
})

hipst_cl4 = Place.create({
  name: "La Station - Gare des mines",
  address: "29 Av. de la Prte d'Aubervilliers, 75018 Paris",
  image: "https://offloadmedia.feverup.com/parissecret.com/wp-content/uploads/2017/11/23150847/37032493_1839351469461648_2194463945903833088_n2.jpg",
  description: "Near the Porte d’Auberviliers, La Station bring the best of the emerging musical scene, heavily inspired by garage rock and alternative electro. And with no fewer than 400m² of space available, it’s the perfect place to party without disturbing the neighbours. When the sun is out, why not chill out and relax on the terrace.",
  phone_number: "09 73 26 11 47",
  genre: 2
})

hipst_cl5 = Place.create({
  name: "La Machine du Moulin Rouge",
  address: "90 Bd de Clichy, 75018 Paris",
  image: "https://cdn.sortiraparis.com/images/1001/41889/214513-feerie-au-moulin-rouge-gagnez-un-diner-spectacle-pour-2-personnes.jpg",
  description: "Club & Concert venue, La Machine du Moulin Rouge is a A shape-shifting place, historical venue located at the heart of the most effervescent district in Paris. La Machine du Moulin Rouge comprises 4 main rooms spread over 4 levels.",
  genre: 2
})

hipst_cl6 = Place.create({
  name: "T7",
  address: "Pl. des Insurgés de Varsovie, 75015 Paris",
  image: "https://www.guettapen.com/wp-content/uploads/2019/12/t7_43_0.jpg",
  description: "Opened in December 2017, T7 (Terminal 7) is a venue located at the Parc des Expositions Porte de Versailles. The complex offers a panoramic view of Paris, including an indoor area of 1000 square meters and a terrace of 400 square meters. Here in special occasions there are nights oriented towards minimal and techno music.",
  phone_number: "01 42 60 64 45",
  genre: 2
})

hipst_cl7 = Place.create({
  name: "À la folie",
  address: "A la Folie - Folie L2 - Parc de, 26 Av. Corentin Cariou, 75019 Paris",
  image: "http://alafolie.paris/wp-content/uploads/2021/08/BP0A6436-960x960.jpg",
  description: "During the day, thanks to its large terrace, À La Folie is a wonderful combination between a bar, a neo-guinguette and a restaurant. In the evening instead, it transforms into a club, where you can dance to the rhythm of the music offered by the organization who’s in charge of the venue for the occasion.",
  phone_number: "07 76 79 70 66",
  genre: 2
})

hipst_cl8 = Place.create({
  name: "Rex Club",
  address: "5 Bd Poissonnière, 75002 Paris",
  image: "http://durevie.paris/wp-content/uploads/sites/7/2023/01/5KYF3JUQQDOJYRLONWTJSUAZQ4.jpeg",
  description: "Renowned for disco in the 70s, then rock in the 80s, the Rex Club (situated under the famous cinema the Grand Rex) has become one of the top clubs in Paris for techno and electronic music.",
  phone_number: "01 42 36 10 96",
  genre: 2
})

# hipster bar
hipst_b1 = Place.create({
  name: "Café Pop",
  address: "102 Rue Saint-Maur, 75011 Paris",
  image: "https://media-cdn.tripadvisor.com/media/photo-s/09/6b/c3/b3/by-night.jpg",
  description: "The Café Populaire in Paris is a type of café that is known for its affordable prices and unpretentious atmosphere. It is a place where locals gather to enjoy a quick coffee or a simple meal without breaking the bank.",
  phone_number: "01 55 28 74 91",
  genre: 1
})

hipst_b2 = Place.create({
  name: "L'épicier",
  address: "24 Rue Notre Dame de Nazareth, 75003 Paris",
  image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/da/a5/82/paris.jpg?w=1400&h=-1&s=1",
  description: "Origianl bar in Paris with great cocktails.",
  genre: 1
})

hipst_b3 = Place.create({
  name: "Oplato",
  address: "69 Rue de Charonne, 75011 Paris",
  image: "https://media-cdn.tripadvisor.com/media/photo-s/12/28/f3/a0/interieur.jpg",
  description: "Amazing place and people. Delicious food, wine and beer.",
  phone_number: "09 81 80 44 70",
  genre: 1
})

hipst_b4 = Place.create({
  name: "Lou Pascalou",
  address: "14 Rue des Panoyaux, 75020 Paris",
  image: "https://lh3.googleusercontent.com/p/AF1QipN9lgtIYOkEsHrG-FbPlWCd1-39H3K9B5N9dwND=s1600-w640",
  description: "Amazing place and people. Delicious food, wine and beer.",
  phone_number: "01 46 36 78 10",
  genre: 1
})

# mainstream clubs
main_cl1 = Place.create({
  name: "Les Etoiles",
  address: "61 Rue du Château d'Eau, 75010 Paris",
  image: "https://media.timeout.com/images/101907887/1372/772/image.jpg",
  description: "Japanese electro, hybrid techno and sharp, sombre DJ sets jar with wacky theme parties like the Cirkus, a mixed clubbing-cabaret event",
  genre: 2
})

main_cl2 = Place.create({
  name: "Globo",
  address: "8 Bd de Strasbourg, 75010 Paris",
  image: "https://www.leglobo.fr/uploads/globoservices/globo-12.jpg",
  description: "Le Globo is an institution in Paris, with the living spirit of the south of France. Every Friday and Saturday, all the 20-30 years old of Paris go there to party and have fun.",
  phone_number: "01 42 41 55 70",
  genre: 2
})

main_cl3 = Place.create({
  name: "L'Arc Paris",
  address: "12 Rue de Presbourg, 75116 Paris",
  image: "https://www.bra-tendances-restauration.com/wp-content/uploads/sites/3/2021/11/Arc-Paris_Dossier-Presse-18-949x633.jpg",
  description: "L'Arc Paris is the epitome of luxury and sophistication, offering a nightlife experience like no other. Located in the heart of the city, next to the iconic Arc de Triomphe, this renowned nightclub is the place to be for those who want to experience the best that Paris has to offer.",
  phone_number: "06 09 86 00 15",
  genre: 2
})

main_cl4 = Place.create({
  name: "Le Rive Gauche",
  address: "1 Rue du Sabot, 75006 Paris",
  image: "http://www.lesbarres.com/media/image/slideshow/a3e47d7684d0a5e6774d8ac4ef13e159741bcbbb.jpg",
  description: "Elegant club in Paris. A good place to party.",
  phone_number: "01 42 71 40 79",
  genre: 2
})

main_cl5 = Place.create({
  name: "Le Flow",
  address: "4 Port Des Invalides, 75007 Paris",
  image: "https://lesitedespeniches.fr/wp-content/uploads/2017/11/le_site_des_peniches_privatisation_le_flow.png",
  description: "Le Flow is the trendiest and most banging of the three. Announcing itself with pounding house music and a forest of deckchairs, it’s a place to socialise and drink (pricy) beer.",
  genre: 2
})

main_cl6 = Place.create({
  name: "Cova Club Paris",
  address: "4 Port Des Invalides, 75007 Paris",
  image: "https://covaparis.fr/wp-content/uploads/2020/01/unnamed.jpg",
  description: "Cova is the new emblematic place of the Champs-Elysées, located in the heart of the Golden Triangle, the club is perfectly designed for the discerning nightlife lover. In an industrial atmosphere, solid parquet floor, New York-style brick wall, custom leather benches, state-of-the-art sound & light equipment with a multitude of possibilities!",
  phone_number: "06 84 83 23 84",
  genre: 2
})


# beauf bars
main_b1 = Place.create({
  name: "Café Oz",
  address: "8 Rue Saint-Denis, 75001 Paris",
  image: "https://media.timeout.com/images/100451829/750/422/image.jpg",
  description: "Located in the heart of Paris in the Halles district, Café Oz Châtelet and its two pub and club areas are ideal for afterworks and evenings with friends.",
  phone_number: "01 40 39 00 18",
  genre: 1
})

main_b2 = Place.create({
  name: "Le Café de la Plage",
  address: "59 Rue de Charonne, 75011 Paris",
  image: "https://s3-media0.fl.yelpcdn.com/bphoto/n2Vrsr09BTnbtzGLb9waBQ/348s.jpg",
  description: "Traditional bar in Paris. Good beer and great people.",
  phone_number: "06 09 49 80 55",
  genre: 1
})

main_b3 = Place.create({
  name: "Le Saint Sauveur",
  address: "11 Rue des Panoyaux, 75020 Paris",
  image: "https://img.restaurantguru.com/reb0-The-Holy-Savior-poster.jpg",
  description: "Yellowed walls, weathered bistro furniture, and a rebellious spirit define this laid-back, punk-inspired rock 'n' roll bar.",
  phone_number: "01 32 61 69 73",
  genre: 1
})

main_b4 = Place.create({
  name: "L'Attirail",
  address: "9 Rue au Maire, 75003 Paris",
  image: "https://lh3.googleusercontent.com/p/AF1QipOse1rE1rEfMQODwoTrSzmyUk-VObmlQ_QqmJlF=s1600-w640",
  description: "A characterful bar-brasserie renowned for its beers and french fries, and featuring a wall covered in identity photos.",
  phone_number: "01 42 72 44 42",
  genre: 1
})

# insta bars
inst_b1 = Place.create({
  name: "Spootnik Bar",
  address: "57 rue des Gravilliers, 75003 Paris",
  image: "https://pr1.nicelocal.fr/kCsn345jfI2cGKCaAMBqeg/1120x700,q85/4px-BW84_n0QJGVPszge3NRBsKw-2VcOifrJIjPYFYkOtaCZxxXQ2ZROrVrJ_XRQHH20Kzt5HYH0xwHTMwktKfiG2HVicMcax_lklfi4WFIe21T4LuqjVA",
  description: "A new underground bar has just opened, featuring cocktails, DJ sets, and retro-futuristic decor.",
  phone_number: "01 43 56 95 09",
  genre: 1
})

inst_b2 = Place.create({
  name: "Andy Wahloo",
  address: "69 Rue des Gravilliers, 75003 Paris",
  image: "https://media-cdn.tripadvisor.com/media/photo-s/12/55/7a/12/neon-banquettes-deco.jpg",
  description: "A picturesque bar serving creative cocktails and champagne, with a terrace set up in a cobblestone courtyard.",
  phone_number: "01 42 71 20 38",
  genre: 1
})

inst_b3 = Place.create({
  name: "Yagō",
  address: "25 Rue Victor Massé, 75009 Paris",
  image: "https://cdn.sortiraparis.com/images/80/95890/693730-yago-le-bar-intimiste-aux-allures-de-maison-close-a-pigalle.jpg",
  description: "An original and unique cocktail bar in Paris.",
  phone_number: "06 07 16 56 92",
  genre: 1
})

inst_b4 = Place.create({
  name: "Little Red Door",
  address: "60 Rue Charlot, 75003 Paris",
  image: "https://media.timeout.com/images/105183936/image.jpg",
  description: "Little Red Door, located on rue Charlot and lit up by slightly gaudy lights in Paris’s uber chic Marais quarter.",
  genre: 1
})

inst_b5 = Place.create({
  name: "Mobster Bar",
  address: "8 Rue de Crussol, 75011 Paris",
  image: "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/40876/1500x750/300487.jpg",
  description: "The Mobster Bar is the newest hidden bar in Paris, located at 8 Rue de Crussol in the 11th arrondissement, offering a cozy ambiance.",
  phone_number: "01 48 07 37 08",
  genre: 1
})

inst_b5 = Place.create({
  name: "Bisou",
  address: "15 Bd du Temple, 75003 Paris",
  image: "https://media.timeout.com/images/105488755/image.jpg",
  description: "The Bisou catches the eye with its pastel pink storefront. Inside? A pink neon sign, heavy hip-hop music, a few high tables to sip your drink and... no menu! Because behind the gorgeous marble bar, the bartender takes care of everything.",
  genre: 1
})


# insta resto
inst_res1 = Place.create({
  name: "Django",
  address: "24 Rue Victor Massé, 75009 Paris",
  image: "https://media.timeout.com/images/105588062/1024/576/image.jpg",
  phone_number: "01 74 64 64 84",
  description: "Intimate restaurant offering cocktails, natural wines, and seasonal menus in a former guitar shop.",
  genre: 0
})

inst_res2 = Place.create({
  name: "Passionné Restaurant",
  address: "17 Rue Bergère, 75009 Paris",
  image: "https://cdn.sortiraparis.com/images/80/97600/764935-le-passionne-le-tout-nouveau-restaurant-gastronomique-qui-fait-vibrer-le-paris-9eme.jpg",
  description: "Elegant restaurant in Paris. Seasonal menus.",
  phone_number: "01 42 28 58 14",
  genre: 0
})

inst_res3 = Place.create({
  name: "Le Sergent Recruteur",
  address: "41 Rue Saint-Louis en l'Île, 75004 Paris",
  image: "https://media-cdn.tripadvisor.com/media/photo-s/18/80/6b/48/main-room.jpg",
  description: "Chic restaurant with exposed beams and stone walls serving modern and classic French gourmet dishes.",
  phone_number: "01 43 54 75 42",
  genre: 0
})

inst_res4 = Place.create({
  name: "Septime",
  address: "80 Rue de Charonne, 75011 Paris",
  image: "https://www.lebey.com/sites/default/files/styles/resto/public/septime_restaurant_paris_.jpg?itok=98mkY216",
  description: "Refined tasting menus with creative food and wine pairings, in a minimalist setting.",
  genre: 0
})

inst_res5 = Place.create({
  name: "Le Servan",
  address: "32 Rue Saint-Maur, 75011 Paris",
  image: "https://fulgurances.com/wp-content/uploads/2018/11/LA_SALLE_5.jpg",
  description: "Franco-Asian restaurant with a retro ambiance, serving black pudding wontons and ginger pork belly.",
  phone_number: "01 55 28 51 82",
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

"-"*40

puts "Setting Trips..."

trip_paris = Trip.create({
  name: "Paris"
})

trip_marseille = Trip.create({
  name: "Marseille"
})

trip_lyon = Trip.create({
  name: "Lyon"
})

puts "Trips created"

puts "Setting Trips..."

trip_paris = Trip.create({
  name: "Paris"
})

trip_marseille = Trip.create({
  name: "Marseille"
})

trip_lyon = Trip.create({
  name: "Lyon"
})

puts "Trips created"
# teuffeur_profiles = User.where(profile_id: 1)
# teuffeur_profiles.each do
#   2.time do

#   end
# end
