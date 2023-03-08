require "open-uri"

puts "Destroying..."
User.destroy_all
Event.destroy_all
Reward.destroy_all
puts "User : #{User.all.length}"
puts "Event : #{Event.all.length}"
puts "Reward : #{Reward.all.length}"

puts "---------------------------------------"
puts "Creating Users"

toto = User.new(first_name: "Toto",
                last_name: "TOTO",
                email: "toto@mail.com",
                password: "password",
                city: "Paris")

toto.photos.attach(io: URI.open("https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"), filename: "seed.png", content_type: "image/png")

toto.save!

bob = User.new(first_name: "Bob",
               last_name: "BOB",
               email: "bob@mail.com",
               password: "password",
               city: "Paris")

bob.photos.attach(io: URI.open("https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"), filename: "seed.png", content_type: "image/png")



bob.save!

jessica = User.new(first_name: "Jessica",
  last_name: "CHASTAIN",
  email: "jessica@mail.com",
  password: "password",
  city: "Paris")
jessica.photos.attach(io: URI.open("https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"), filename: "seed.png", content_type: "image/png")
jessica.save!

hugo = User.new(first_name: "Hugo",
  last_name: "POUSSIN",
  email: "hugo@mail.com",
  password: "password",
  city: "Evry")
hugo.photos.attach(io: URI.open("https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"), filename: "seed.png", content_type: "image/png")
hugo.save!
melanie = User.new(first_name: "Mélanie",
  last_name: "PICHARD",
  email: "melanie@mail.com",
  password: "password",
  city: "Evry")
melanie.photos.attach(io: URI.open("https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"), filename: "seed.png", content_type: "image/png")
melanie.save!
puts "Users created : #{User.count}"
puts "---------------------------------------"
puts "Creating Events"


solidays = Event.new(
  title: "Solidays",
  category: "Festival de musique",
  tags: "",
  address: "2 Rte des Tribunes, 75016 Paris",
  description: "Solidays est un festival de musique organisé par l'association Solidarité sida.
                Depuis 1999, il rassemble, sur les pelouses de l'hippodrome de Longchamp, à Paris,
                des artistes, conférenciers, militants et festivaliers.",
  start_date: DateTime.now - 1.day,
  end_date: DateTime.now - 20.hours
)
solidays.save!

welove = Event.new(
  title: "Welove",
  category: "Festival de musique",
  tags: "",
  address: "2 Rte des Tribunes, 75016 Paris",
  description: "Solidays est un festival de musique organisé par l'association Solidarité sida.
                Depuis 1999, il rassemble, sur les pelouses de l'hippodrome de Longchamp, à Paris,
                des artistes, conférenciers, militants et festivaliers.",
  start_date: DateTime.now - 2.hours,
  end_date: DateTime.now + 2.hours
)
welove.save!

rockenseine = Event.new(
  title: "Rock En Seine",
  category: "Festival de musique",
  tags: "",
  address: "2 Rte des Tribunes, 75016 Paris",
  description: "Solidays est un festival de musique organisé par l'association Solidarité sida.
                Depuis 1999, il rassemble, sur les pelouses de l'hippodrome de Longchamp, à Paris,
                des artistes, conférenciers, militants et festivaliers.",
  start_date: DateTime.now + 1.day,
  end_date: DateTime.now + 3.days
)
rockenseine.save!


puts "Events created : #{Event.count}"

puts "---------------------------------------"
puts "Creating Participations"

Participation.create!(
  hint: "coiffe indienne",
  user: toto,
  event: solidays
)
Participation.create!(
  hint: "coiffe indienne",
  user: toto,
  event: welove
)
Participation.create!(
  hint: "coiffe indienne",
  user: toto,
  event: rockenseine
)
Participation.create!(
  hint: "chapeau de cowboy",
  user: bob,
  event: solidays
)
puts "Participations created : #{Participation.count}"
puts "---------------------------------------"
puts "Creating Rewards"
puts "---------------------------------------"
puts "Creating Reward Choices"
puts "---------------------------------------"
puts "Creating Challenges"
